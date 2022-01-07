
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; int cap_permitted; int cap_effective; } ;


 int SECURE_KEEP_CAPS ;
 int cap_clear (int ) ;
 int issecure (int ) ;

__attribute__((used)) static inline void cap_emulate_setxuid(struct cred *new, const struct cred *old)
{
 if ((old->uid == 0 || old->euid == 0 || old->suid == 0) &&
     (new->uid != 0 && new->euid != 0 && new->suid != 0) &&
     !issecure(SECURE_KEEP_CAPS)) {
  cap_clear(new->cap_permitted);
  cap_clear(new->cap_effective);
 }
 if (old->euid == 0 && new->euid != 0)
  cap_clear(new->cap_effective);
 if (old->euid != 0 && new->euid == 0)
  new->cap_effective = new->cap_permitted;
}
