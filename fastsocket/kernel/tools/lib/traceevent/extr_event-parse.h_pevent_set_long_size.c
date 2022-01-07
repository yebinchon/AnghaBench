
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int long_size; } ;



__attribute__((used)) static inline void pevent_set_long_size(struct pevent *pevent, int long_size)
{
 pevent->long_size = long_size;
}
