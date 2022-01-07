
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int param_get_hashtbl_sz(char *buffer, struct kernel_param *kp)
{
 unsigned int nbits;

 nbits = *(unsigned int *)kp->arg;
 return sprintf(buffer, "%u", 1U << nbits);
}
