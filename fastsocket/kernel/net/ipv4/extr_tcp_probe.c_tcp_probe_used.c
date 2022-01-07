
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int tail; } ;


 int bufsize ;
 TYPE_1__ tcp_probe ;

__attribute__((used)) static inline int tcp_probe_used(void)
{
 return (tcp_probe.head - tcp_probe.tail) % bufsize;
}
