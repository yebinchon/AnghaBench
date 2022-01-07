
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * var; int * fixed; } ;
typedef TYPE_3__ rc_versioninfo ;
typedef int rc_ver_info ;
typedef int rc_uint_type ;
struct TYPE_6__ {int language; } ;
struct TYPE_7__ {TYPE_3__* versioninfo; } ;
struct TYPE_9__ {TYPE_1__ res_info; TYPE_2__ u; int type; } ;
typedef TYPE_4__ rc_res_resource ;
typedef int rc_res_id ;
typedef int rc_fixed_versioninfo ;


 int RES_TYPE_VERSIONINFO ;
 int RT_VERSION ;
 TYPE_4__* define_standard_resource (int *,int ,int ,int ,int ) ;
 scalar_t__ res_alloc (int) ;
 int resources ;

void
define_versioninfo (rc_res_id id, rc_uint_type language,
      rc_fixed_versioninfo *fixedverinfo,
      rc_ver_info *verinfo)
{
  rc_res_resource *r;

  r = define_standard_resource (&resources, RT_VERSION, id, language, 0);
  r->type = RES_TYPE_VERSIONINFO;
  r->u.versioninfo = ((rc_versioninfo *)
        res_alloc (sizeof (rc_versioninfo)));
  r->u.versioninfo->fixed = fixedverinfo;
  r->u.versioninfo->var = verinfo;
  r->res_info.language = language;
}
