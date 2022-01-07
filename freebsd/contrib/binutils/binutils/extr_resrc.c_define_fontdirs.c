
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int fontdir; } ;
struct TYPE_9__ {int res_info; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_res_resource ;
struct TYPE_7__ {int id; } ;
struct TYPE_10__ {TYPE_1__ u; scalar_t__ named; } ;
typedef TYPE_4__ rc_res_id ;


 int RES_TYPE_FONTDIR ;
 int RT_FONTDIR ;
 TYPE_3__* define_standard_resource (int *,int ,TYPE_4__,int,int ) ;
 int fontdirs ;
 int fontdirs_resinfo ;
 int resources ;

__attribute__((used)) static void
define_fontdirs (void)
{
  rc_res_resource *r;
  rc_res_id id;

  id.named = 0;
  id.u.id = 1;

  r = define_standard_resource (&resources, RT_FONTDIR, id, 0x409, 0);

  r->type = RES_TYPE_FONTDIR;
  r->u.fontdir = fontdirs;
  r->res_info = fontdirs_resinfo;
}
