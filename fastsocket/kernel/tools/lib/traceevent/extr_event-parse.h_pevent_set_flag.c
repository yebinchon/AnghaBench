
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int flags; } ;



__attribute__((used)) static inline void pevent_set_flag(struct pevent *pevent, int flag)
{
 pevent->flags |= flag;
}
