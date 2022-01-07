
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {char* security; } ;


 int EINVAL ;
 char* smack_from_secid (int ) ;

__attribute__((used)) static int smack_kernel_act_as(struct cred *new, u32 secid)
{
 char *smack = smack_from_secid(secid);

 if (smack == ((void*)0))
  return -EINVAL;

 new->security = smack;
 return 0;
}
