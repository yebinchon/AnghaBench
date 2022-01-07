
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_path; } ;


 int remove (int ) ;
 TYPE_1__ snmp_client ;

__attribute__((used)) static void
remove_local(void)
{
 (void)remove(snmp_client.local_path);
}
