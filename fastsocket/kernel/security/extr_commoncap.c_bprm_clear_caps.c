
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linux_binprm {int cap_effective; TYPE_1__* cred; } ;
struct TYPE_2__ {int cap_permitted; } ;


 int cap_clear (int ) ;

__attribute__((used)) static inline void bprm_clear_caps(struct linux_binprm *bprm)
{
 cap_clear(bprm->cred->cap_permitted);
 bprm->cap_effective = 0;
}
