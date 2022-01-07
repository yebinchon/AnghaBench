
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IT_tr_CODE ;
 int itheader (char*,int ) ;

__attribute__((used)) static void
sysroff_print_tr_out (void)
{
  itheader ("tr", IT_tr_CODE);
}
