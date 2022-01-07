
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oid_usm ;
 int or_register (int *,char*,int ) ;
 int reg_usm ;
 int usm_module ;

__attribute__((used)) static void
usm_start(void)
{
 reg_usm = or_register(&oid_usm,
     "The MIB module for managing SNMP User-Based Security Model.",
     usm_module);
}
