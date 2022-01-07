
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {scalar_t__ arg; } ;


 int sprintf (char*,char*,char*) ;

int param_get_charp(char *buffer, struct kernel_param *kp)
{
 return sprintf(buffer, "%s", *((char **)kp->arg));
}
