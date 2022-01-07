
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cap_permitted; int cap_effective; int fsuid; } ;


 int EINVAL ;




 int SECURE_NO_SETUID_FIXUP ;
 int cap_drop_fs_set (int ) ;
 int cap_emulate_setxuid (struct cred*,struct cred const*) ;
 int cap_raise_fs_set (int ,int ) ;
 int issecure (int ) ;

int cap_task_fix_setuid(struct cred *new, const struct cred *old, int flags)
{
 switch (flags) {
 case 129:
 case 130:
 case 128:


  if (!issecure(SECURE_NO_SETUID_FIXUP))
   cap_emulate_setxuid(new, old);
  break;

 case 131:






  if (!issecure(SECURE_NO_SETUID_FIXUP)) {
   if (old->fsuid == 0 && new->fsuid != 0)
    new->cap_effective =
     cap_drop_fs_set(new->cap_effective);

   if (old->fsuid != 0 && new->fsuid == 0)
    new->cap_effective =
     cap_raise_fs_set(new->cap_effective,
        new->cap_permitted);
  }
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
