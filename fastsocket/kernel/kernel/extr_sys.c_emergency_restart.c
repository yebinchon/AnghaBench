
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMSG_DUMP_EMERG ;
 int kmsg_dump (int ) ;
 int machine_emergency_restart () ;

void emergency_restart(void)
{
 kmsg_dump(KMSG_DUMP_EMERG);
 machine_emergency_restart();
}
