
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int long_size; } ;



__attribute__((used)) static inline int pevent_get_long_size(struct pevent *pevent)
{
 return pevent->long_size;
}
