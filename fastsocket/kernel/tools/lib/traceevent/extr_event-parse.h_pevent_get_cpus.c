
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int cpus; } ;



__attribute__((used)) static inline int pevent_get_cpus(struct pevent *pevent)
{
 return pevent->cpus;
}
