
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int or_unregister (int ) ;
 int reg_notification ;
 int reg_target ;
 int target_flush_all () ;

__attribute__((used)) static int
target_fini(void)
{
 target_flush_all();
 or_unregister(reg_target);
 or_unregister(reg_notification);

 return (0);
}
