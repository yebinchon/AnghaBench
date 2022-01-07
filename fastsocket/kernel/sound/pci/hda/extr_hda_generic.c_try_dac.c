
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ is_reachable_path (struct hda_codec*,int ,int ) ;

__attribute__((used)) static inline hda_nid_t try_dac(struct hda_codec *codec,
    hda_nid_t dac, hda_nid_t pin)
{
 return is_reachable_path(codec, dac, pin) ? dac : 0;
}
