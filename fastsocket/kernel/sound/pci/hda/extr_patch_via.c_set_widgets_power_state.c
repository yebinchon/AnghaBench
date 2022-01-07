
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_spec {int (* set_widgets_power_state ) (struct hda_codec*) ;} ;
struct hda_codec {struct via_spec* spec; } ;


 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void set_widgets_power_state(struct hda_codec *codec)
{
}
