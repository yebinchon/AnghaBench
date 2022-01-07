
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int host_bigendian; } ;



__attribute__((used)) static inline void pevent_set_host_bigendian(struct pevent *pevent, int endian)
{
 pevent->host_bigendian = endian;
}
