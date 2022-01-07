
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct hda_codec {int subsystem_id; int vendor_id; TYPE_3__* bus; struct alc_spec* spec; } ;
struct TYPE_9__ {scalar_t__ line_out_type; int * hp_pins; int line_outs; scalar_t__* line_out_pins; } ;
struct TYPE_10__ {TYPE_4__ autocfg; } ;
struct TYPE_6__ {unsigned int sku_cfg; scalar_t__ fixup; } ;
struct alc_spec {TYPE_5__ gen; int init_amp; TYPE_1__ cdefine; } ;
typedef int hda_nid_t ;
struct TYPE_8__ {TYPE_2__* pci; } ;
struct TYPE_7__ {unsigned int subsystem_device; } ;


 unsigned int ALC_FIXUP_SKU_IGNORE ;
 int ALC_INIT_DEFAULT ;
 int ALC_INIT_GPIO1 ;
 int ALC_INIT_GPIO2 ;
 int ALC_INIT_GPIO3 ;
 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ found_in_nid_list (int ,scalar_t__*,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,unsigned int) ;
 int snd_printd (char*,unsigned int,unsigned int) ;

__attribute__((used)) static int alc_subsystem_id(struct hda_codec *codec,
       hda_nid_t porta, hda_nid_t porte,
       hda_nid_t portd, hda_nid_t porti)
{
 unsigned int ass, tmp, i;
 unsigned nid;
 struct alc_spec *spec = codec->spec;

 if (spec->cdefine.fixup) {
  ass = spec->cdefine.sku_cfg;
  if (ass == ALC_FIXUP_SKU_IGNORE)
   return 0;
  goto do_sku;
 }

 ass = codec->subsystem_id & 0xffff;
 if ((ass != codec->bus->pci->subsystem_device) && (ass & 1))
  goto do_sku;
 nid = 0x1d;
 if (codec->vendor_id == 0x10ec0260)
  nid = 0x17;
 ass = snd_hda_codec_get_pincfg(codec, nid);
 snd_printd("realtek: No valid SSID, "
     "checking pincfg 0x%08x for NID 0x%x\n",
     ass, nid);
 if (!(ass & 1))
  return 0;
 if ((ass >> 30) != 1)
  return 0;


 tmp = 0;
 for (i = 1; i < 16; i++) {
  if ((ass >> i) & 1)
   tmp++;
 }
 if (((ass >> 16) & 0xf) != tmp)
  return 0;
do_sku:
 snd_printd("realtek: Enabling init ASM_ID=0x%04x CODEC_ID=%08x\n",
     ass & 0xffff, codec->vendor_id);







 tmp = (ass & 0x38) >> 3;
 switch (tmp) {
 case 1:
  spec->init_amp = ALC_INIT_GPIO1;
  break;
 case 3:
  spec->init_amp = ALC_INIT_GPIO2;
  break;
 case 7:
  spec->init_amp = ALC_INIT_GPIO3;
  break;
 case 5:
 default:
  spec->init_amp = ALC_INIT_DEFAULT;
  break;
 }




 if (!(ass & 0x8000))
  return 1;







 if (!spec->gen.autocfg.hp_pins[0] &&
     !(spec->gen.autocfg.line_out_pins[0] &&
       spec->gen.autocfg.line_out_type == AUTO_PIN_HP_OUT)) {
  hda_nid_t nid;
  tmp = (ass >> 11) & 0x3;
  if (tmp == 0)
   nid = porta;
  else if (tmp == 1)
   nid = porte;
  else if (tmp == 2)
   nid = portd;
  else if (tmp == 3)
   nid = porti;
  else
   return 1;
  if (found_in_nid_list(nid, spec->gen.autocfg.line_out_pins,
          spec->gen.autocfg.line_outs))
   return 1;
  spec->gen.autocfg.hp_pins[0] = nid;
 }
 return 1;
}
