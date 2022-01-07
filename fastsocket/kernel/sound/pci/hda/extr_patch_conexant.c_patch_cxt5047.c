
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* unsol_event; int init; } ;
struct hda_codec {int pin_amp_workaround; int subsystem_id; TYPE_2__ patch_ops; struct conexant_spec* spec; } ;
struct TYPE_3__ {int max_channels; int dig_out_nid; void* dac_nids; void* num_dacs; } ;
struct conexant_spec {int num_adc_nids; int num_mixers; int num_init_verbs; int vmaster_nid; int * init_verbs; void** mixers; int * input_mux; void* channel_mode; void* num_channel_mode; scalar_t__ spdif_route; int capsrc_nids; int adc_nids; TYPE_1__ multiout; } ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 void* ARRAY_SIZE (void*) ;
 int CXT5047_AUTO ;



 int CXT5047_MODELS ;
 int CXT5047_SPDIF_OUT ;

 int ENOMEM ;
 int GFP_KERNEL ;
 int HDA_INPUT ;
 TYPE_2__ conexant_patch_ops ;
 int cxt5047_adc_nids ;
 void* cxt5047_base_mixers ;
 int cxt5047_capsrc_nids ;
 int cxt5047_cfg_tbl ;
 void* cxt5047_dac_nids ;
 int cxt5047_hp_init ;
 void* cxt5047_hp_only_mixers ;
 void* cxt5047_hp_spk_mixers ;
 void* cxt5047_hp_unsol_event ;
 int cxt5047_init_verbs ;
 int cxt5047_models ;
 void* cxt5047_modes ;
 int cxt5047_test_capture_source ;
 int cxt5047_test_init_verbs ;
 void* cxt5047_test_mixer ;
 int cxt5047_toshiba_capture_source ;
 int cxt5047_toshiba_init_verbs ;
 struct conexant_spec* kzalloc (int,int ) ;
 int patch_conexant_auto (struct hda_codec*) ;
 int snd_hda_check_board_config (struct hda_codec*,int ,int ,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static int patch_cxt5047(struct hda_codec *codec)
{
 struct conexant_spec *spec;
 int board_config;

 board_config = snd_hda_check_board_config(codec, CXT5047_MODELS,
        cxt5047_models,
        cxt5047_cfg_tbl);
 if (board_config < 0)
  board_config = CXT5047_AUTO;
 if (board_config == CXT5047_AUTO)
  return patch_conexant_auto(codec);

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 codec->spec = spec;
 codec->pin_amp_workaround = 1;

 spec->multiout.max_channels = 2;
 spec->multiout.num_dacs = ARRAY_SIZE(cxt5047_dac_nids);
 spec->multiout.dac_nids = cxt5047_dac_nids;
 spec->multiout.dig_out_nid = CXT5047_SPDIF_OUT;
 spec->num_adc_nids = 1;
 spec->adc_nids = cxt5047_adc_nids;
 spec->capsrc_nids = cxt5047_capsrc_nids;
 spec->num_mixers = 1;
 spec->mixers[0] = cxt5047_base_mixers;
 spec->num_init_verbs = 1;
 spec->init_verbs[0] = cxt5047_init_verbs;
 spec->spdif_route = 0;
 spec->num_channel_mode = ARRAY_SIZE(cxt5047_modes),
 spec->channel_mode = cxt5047_modes,

 codec->patch_ops = conexant_patch_ops;

 switch (board_config) {
 case 131:
  spec->num_mixers = 2;
  spec->mixers[1] = cxt5047_hp_spk_mixers;
  codec->patch_ops.unsol_event = cxt5047_hp_unsol_event;
  break;
 case 129:
  spec->num_mixers = 2;
  spec->mixers[1] = cxt5047_hp_only_mixers;
  codec->patch_ops.unsol_event = cxt5047_hp_unsol_event;
  codec->patch_ops.init = cxt5047_hp_init;
  break;
 case 130:
  spec->input_mux = &cxt5047_toshiba_capture_source;
  spec->num_mixers = 2;
  spec->mixers[1] = cxt5047_hp_spk_mixers;
  spec->num_init_verbs = 2;
  spec->init_verbs[1] = cxt5047_toshiba_init_verbs;
  codec->patch_ops.unsol_event = cxt5047_hp_unsol_event;
  break;







 }
 spec->vmaster_nid = 0x13;

 switch (codec->subsystem_id >> 16) {
 case 0x103c:




  snd_hda_override_amp_caps(codec, 0x10, HDA_INPUT,
       (0x17 << AC_AMPCAP_OFFSET_SHIFT) |
       (0x17 << AC_AMPCAP_NUM_STEPS_SHIFT) |
       (0x05 << AC_AMPCAP_STEP_SIZE_SHIFT) |
       (1 << AC_AMPCAP_MUTE_SHIFT));
  break;
 }

 return 0;
}
