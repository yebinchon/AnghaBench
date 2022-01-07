
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int word; void** byte; } ;
typedef TYPE_1__ __u16_host_order ;
typedef int __u16 ;


 void*** service_hint_mapping ;

__u16 irlmp_service_to_hint(int service)
{
 __u16_host_order hint;

 hint.byte[0] = service_hint_mapping[service][0];
 hint.byte[1] = service_hint_mapping[service][1];

 return hint.word;
}
