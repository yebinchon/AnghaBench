
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec {int dummy; } ;
struct TYPE_2__ {int set_power_state; } ;
struct hda_codec {int vendor_id; TYPE_1__ patch_ops; struct hdmi_spec* spec; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int generic_hdmi_init_per_pins (struct hda_codec*) ;
 TYPE_1__ generic_hdmi_patch_ops ;
 int haswell_set_power_state ;
 int hdmi_array_init (struct hdmi_spec*,int) ;
 scalar_t__ hdmi_parse_codec (struct hda_codec*) ;
 int init_channel_allocations () ;
 int intel_haswell_enable_all_pins (struct hda_codec*,int) ;
 int intel_haswell_fixup_enable_dp12 (struct hda_codec*) ;
 int kfree (struct hdmi_spec*) ;
 struct hdmi_spec* kzalloc (int,int ) ;

__attribute__((used)) static int patch_generic_hdmi(struct hda_codec *codec)
{
 struct hdmi_spec *spec;

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (spec == ((void*)0))
  return -ENOMEM;

 codec->spec = spec;
 hdmi_array_init(spec, 4);

 if (codec->vendor_id == 0x80862807) {
  intel_haswell_enable_all_pins(codec, 1);
  intel_haswell_fixup_enable_dp12(codec);
 }

 if (hdmi_parse_codec(codec) < 0) {
  codec->spec = ((void*)0);
  kfree(spec);
  return -EINVAL;
 }
 codec->patch_ops = generic_hdmi_patch_ops;
 if (codec->vendor_id == 0x80862807)
  codec->patch_ops.set_power_state = haswell_set_power_state;

 generic_hdmi_init_per_pins(codec);

 init_channel_allocations();

 return 0;
}
