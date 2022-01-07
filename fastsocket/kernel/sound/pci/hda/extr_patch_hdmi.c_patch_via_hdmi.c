
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int VIAHDMI_CVT_NID ;
 int VIAHDMI_PIN_NID ;
 int patch_simple_hdmi (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int patch_via_hdmi(struct hda_codec *codec)
{
 return patch_simple_hdmi(codec, VIAHDMI_CVT_NID, VIAHDMI_PIN_NID);
}
