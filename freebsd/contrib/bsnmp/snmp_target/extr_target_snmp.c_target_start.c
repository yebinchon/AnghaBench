
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oid_notification ;
 int oid_target ;
 void* or_register (int *,char*,int ) ;
 void* reg_notification ;
 void* reg_target ;
 int target_module ;

__attribute__((used)) static void
target_start(void)
{
 reg_target = or_register(&oid_target,
     "The MIB module for managing SNMP Management Targets.",
     target_module);
 reg_notification = or_register(&oid_notification,
     "The MIB module for configuring generation of SNMP notifications.",
     target_module);
}
