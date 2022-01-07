
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int kernel_restart (int *) ;

__attribute__((used)) static void deferred_cad(struct work_struct *dummy)
{
 kernel_restart(((void*)0));
}
