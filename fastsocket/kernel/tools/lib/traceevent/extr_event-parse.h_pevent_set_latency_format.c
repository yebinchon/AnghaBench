
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int latency_format; } ;



__attribute__((used)) static inline void pevent_set_latency_format(struct pevent *pevent, int lat)
{
 pevent->latency_format = lat;
}
