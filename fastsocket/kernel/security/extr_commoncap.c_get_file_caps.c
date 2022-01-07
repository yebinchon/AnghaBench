
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int dummy; } ;


 int bprm_clear_caps (struct linux_binprm*) ;

__attribute__((used)) static inline int get_file_caps(struct linux_binprm *bprm, bool *effective)
{
 bprm_clear_caps(bprm);
 return 0;
}
