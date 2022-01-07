
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbmix_ctl_map {scalar_t__ id; int ignore_ctl_error; int selector_map; int map; } ;
struct usb_mixer_interface {scalar_t__ protocol; TYPE_2__* hostif; int ignore_ctl_error; TYPE_1__* chip; } ;
struct uac2_output_terminal_descriptor {int bLength; int bCSourceID; int bSourceID; int iTerminal; int wTerminalType; int bTerminalID; } ;
struct uac1_output_terminal_descriptor {int bLength; int bSourceID; int iTerminal; int wTerminalType; int bTerminalID; } ;
struct TYPE_6__ {int name; void* type; int id; } ;
struct mixer_build {TYPE_3__ oterm; int unitbitmap; int selector_map; int map; TYPE_1__* chip; int buflen; int buffer; struct usb_mixer_interface* mixer; } ;
typedef int state ;
struct TYPE_5__ {int extralen; int extra; } ;
struct TYPE_4__ {scalar_t__ usb_id; } ;


 int UAC_OUTPUT_TERMINAL ;
 scalar_t__ UAC_VERSION_1 ;
 void* le16_to_cpu (int ) ;
 int memset (struct mixer_build*,int ,int) ;
 int parse_audio_unit (struct mixer_build*,int ) ;
 int set_bit (int ,int ) ;
 void* snd_usb_find_csint_desc (int ,int ,void*,int ) ;
 struct usbmix_ctl_map* usbmix_ctl_maps ;

__attribute__((used)) static int snd_usb_mixer_controls(struct usb_mixer_interface *mixer)
{
 struct mixer_build state;
 int err;
 const struct usbmix_ctl_map *map;
 void *p;

 memset(&state, 0, sizeof(state));
 state.chip = mixer->chip;
 state.mixer = mixer;
 state.buffer = mixer->hostif->extra;
 state.buflen = mixer->hostif->extralen;


 for (map = usbmix_ctl_maps; map->id; map++) {
  if (map->id == state.chip->usb_id) {
   state.map = map->map;
   state.selector_map = map->selector_map;
   mixer->ignore_ctl_error = map->ignore_ctl_error;
   break;
  }
 }

 p = ((void*)0);
 while ((p = snd_usb_find_csint_desc(mixer->hostif->extra, mixer->hostif->extralen,
         p, UAC_OUTPUT_TERMINAL)) != ((void*)0)) {
  if (mixer->protocol == UAC_VERSION_1) {
   struct uac1_output_terminal_descriptor *desc = p;

   if (desc->bLength < sizeof(*desc))
    continue;
   set_bit(desc->bTerminalID, state.unitbitmap);
   state.oterm.id = desc->bTerminalID;
   state.oterm.type = le16_to_cpu(desc->wTerminalType);
   state.oterm.name = desc->iTerminal;
   err = parse_audio_unit(&state, desc->bSourceID);
   if (err < 0)
    return err;
  } else {
   struct uac2_output_terminal_descriptor *desc = p;

   if (desc->bLength < sizeof(*desc))
    continue;
   set_bit(desc->bTerminalID, state.unitbitmap);
   state.oterm.id = desc->bTerminalID;
   state.oterm.type = le16_to_cpu(desc->wTerminalType);
   state.oterm.name = desc->iTerminal;
   err = parse_audio_unit(&state, desc->bSourceID);
   if (err < 0)
    return err;


   err = parse_audio_unit(&state, desc->bCSourceID);
   if (err < 0)
    return err;
  }
 }

 return 0;
}
