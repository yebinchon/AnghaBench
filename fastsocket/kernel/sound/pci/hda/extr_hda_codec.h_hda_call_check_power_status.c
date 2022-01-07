
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* check_power_status ) (struct hda_codec*,int ) ;} ;
struct hda_codec {TYPE_1__ patch_ops; } ;
typedef int hda_nid_t ;


 int stub1 (struct hda_codec*,int ) ;

__attribute__((used)) static inline
int hda_call_check_power_status(struct hda_codec *codec, hda_nid_t nid)
{




 return 0;
}
