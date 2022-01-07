
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_audio_term {int id; int type; int name; void* chconfig; int channels; } ;
struct uac_selector_unit_descriptor {int* baSourceID; int bDescriptorSubtype; } ;
struct uac_processing_unit_descriptor {int* baSourceID; int bDescriptorSubtype; int bNrInPins; } ;
struct uac_mixer_unit_descriptor {int bDescriptorSubtype; } ;
struct uac_input_terminal_descriptor {int iTerminal; int wChannelConfig; int bNrChannels; int wTerminalType; } ;
struct uac_feature_unit_descriptor {int bSourceID; } ;
struct uac_clock_source_descriptor {int bDescriptorSubtype; int iClockSource; } ;
struct uac2_input_terminal_descriptor {int bCSourceID; int iTerminal; int bmChannelConfig; int bNrChannels; int wTerminalType; } ;
struct mixer_build {TYPE_1__* mixer; } ;
struct TYPE_2__ {int protocol; } ;


 int ENODEV ;
 int UAC_VERSION_1 ;
 void* find_audio_control_unit (struct mixer_build*,int) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memset (struct usb_audio_term*,int ,int) ;
 int uac_mixer_unit_bNrChannels (struct uac_mixer_unit_descriptor*) ;
 int uac_mixer_unit_iMixer (struct uac_mixer_unit_descriptor*) ;
 void* uac_mixer_unit_wChannelConfig (struct uac_mixer_unit_descriptor*,int ) ;
 int uac_processing_unit_bNrChannels (struct uac_processing_unit_descriptor*) ;
 int uac_processing_unit_iProcessing (struct uac_processing_unit_descriptor*,int ) ;
 void* uac_processing_unit_wChannelConfig (struct uac_processing_unit_descriptor*,int ) ;
 int uac_selector_unit_iSelector (struct uac_selector_unit_descriptor*) ;

__attribute__((used)) static int check_input_term(struct mixer_build *state, int id, struct usb_audio_term *term)
{
 int err;
 void *p1;

 memset(term, 0, sizeof(*term));
 while ((p1 = find_audio_control_unit(state, id)) != ((void*)0)) {
  unsigned char *hdr = p1;
  term->id = id;
  switch (hdr[2]) {
  case 130:
   if (state->mixer->protocol == UAC_VERSION_1) {
    struct uac_input_terminal_descriptor *d = p1;
    term->type = le16_to_cpu(d->wTerminalType);
    term->channels = d->bNrChannels;
    term->chconfig = le16_to_cpu(d->wChannelConfig);
    term->name = d->iTerminal;
   } else {
    struct uac2_input_terminal_descriptor *d = p1;
    term->type = le16_to_cpu(d->wTerminalType);
    term->channels = d->bNrChannels;
    term->chconfig = le32_to_cpu(d->bmChannelConfig);
    term->name = d->iTerminal;


    err = check_input_term(state, d->bCSourceID, term);
    if (err < 0)
     return err;
   }
   return 0;
  case 131: {

   struct uac_feature_unit_descriptor *d = p1;
   id = d->bSourceID;
   break;
  }
  case 129: {
   struct uac_mixer_unit_descriptor *d = p1;
   term->type = d->bDescriptorSubtype << 16;
   term->channels = uac_mixer_unit_bNrChannels(d);
   term->chconfig = uac_mixer_unit_wChannelConfig(d, state->mixer->protocol);
   term->name = uac_mixer_unit_iMixer(d);
   return 0;
  }
  case 128:
  case 133: {
   struct uac_selector_unit_descriptor *d = p1;

   if (check_input_term(state, d->baSourceID[0], term) < 0)
    return -ENODEV;
   term->type = d->bDescriptorSubtype << 16;
   term->id = id;
   term->name = uac_selector_unit_iSelector(d);
   return 0;
  }
  case 134:
  case 135: {
   struct uac_processing_unit_descriptor *d = p1;
   if (d->bNrInPins) {
    id = d->baSourceID[0];
    break;
   }
   term->type = d->bDescriptorSubtype << 16;
   term->channels = uac_processing_unit_bNrChannels(d);
   term->chconfig = uac_processing_unit_wChannelConfig(d, state->mixer->protocol);
   term->name = uac_processing_unit_iProcessing(d, state->mixer->protocol);
   return 0;
  }
  case 132: {
   struct uac_clock_source_descriptor *d = p1;
   term->type = d->bDescriptorSubtype << 16;
   term->id = id;
   term->name = d->iClockSource;
   return 0;
  }
  default:
   return -ENODEV;
  }
 }
 return -ENODEV;
}
