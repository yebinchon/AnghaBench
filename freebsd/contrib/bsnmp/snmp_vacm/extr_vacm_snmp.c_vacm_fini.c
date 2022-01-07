
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int or_unregister (int ) ;
 int reg_vacm ;
 int vacm_flush_contexts (int ) ;

__attribute__((used)) static int
vacm_fini(void)
{

 vacm_flush_contexts(reg_vacm);
 or_unregister(reg_vacm);

 return (0);
}
