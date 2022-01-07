
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct svc_export {int ex_flags; int * ex_uuid; } ;
struct TYPE_4__ {TYPE_1__* s_type; int s_dev; } ;
struct TYPE_3__ {int fs_flags; } ;
 int FS_REQUIRES_DEV ;
 int NFSEXP_FSID ;
 TYPE_2__* exp_sb (struct svc_export*) ;
 int is_root_export (struct svc_export*) ;
 int old_valid_dev (int ) ;

__attribute__((used)) static bool fsid_type_ok_for_exp(u8 fsid_type, struct svc_export *exp)
{
 switch (fsid_type) {
 case 135:
  if (!old_valid_dev(exp_sb(exp)->s_dev))
   return 0;

 case 133:
 case 134:
  return exp_sb(exp)->s_type->fs_flags & FS_REQUIRES_DEV;
 case 132:
  return exp->ex_flags & NFSEXP_FSID;
 case 128:
 case 131:
  if (!is_root_export(exp))
   return 0;

 case 129:
 case 130:
  return exp->ex_uuid != ((void*)0);
 }
 return 1;
}
