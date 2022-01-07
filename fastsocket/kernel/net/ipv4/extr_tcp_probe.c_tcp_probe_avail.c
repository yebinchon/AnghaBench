
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bufsize ;
 int tcp_probe_used () ;

__attribute__((used)) static inline int tcp_probe_avail(void)
{
 return bufsize - tcp_probe_used();
}
