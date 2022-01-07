
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int or_unregister (int ) ;
 int reg_usm ;
 int usm_flush_users () ;

__attribute__((used)) static int
usm_fini(void)
{
 usm_flush_users();
 or_unregister(reg_usm);

 return (0);
}
