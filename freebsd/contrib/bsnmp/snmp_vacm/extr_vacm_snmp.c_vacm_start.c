
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oid_vacm ;
 int or_register (int *,char*,int ) ;
 int reg_vacm ;
 int vacm_add_context (char*,int ) ;
 int vacm_module ;

__attribute__((used)) static void
vacm_start(void)
{
 static char dflt_ctx[] = "";

 reg_vacm = or_register(&oid_vacm,
     "The MIB module for managing SNMP View-based Access Control Model.",
     vacm_module);

 (void)vacm_add_context(dflt_ctx, reg_vacm);
}
