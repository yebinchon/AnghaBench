
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_srcu_struct (int *) ;
 int srcu_ctl ;
 int synchronize_srcu (int *) ;

__attribute__((used)) static void srcu_torture_cleanup(void)
{
 synchronize_srcu(&srcu_ctl);
 cleanup_srcu_struct(&srcu_ctl);
}
