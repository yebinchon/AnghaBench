
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srcu_ctl ;
 int synchronize_srcu_expedited (int *) ;

__attribute__((used)) static void srcu_torture_synchronize_expedited(void)
{
 synchronize_srcu_expedited(&srcu_ctl);
}
