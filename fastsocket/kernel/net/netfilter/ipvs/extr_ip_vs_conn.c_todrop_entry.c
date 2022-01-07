
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct ip_vs_conn {int in_pkts; TYPE_1__ timer; scalar_t__ timeout; } ;


 int HZ ;
 int atomic_read (int *) ;
 scalar_t__ jiffies ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int todrop_entry(struct ip_vs_conn *cp)
{




 static const char todrop_rate[9] = {0, 1, 2, 3, 4, 5, 6, 7, 8};
 static char todrop_counter[9] = {0};
 int i;




 if (time_before(cp->timeout + jiffies, cp->timer.expires + 60*HZ))
  return 0;



 i = atomic_read(&cp->in_pkts);
 if (i > 8 || i < 0) return 0;

 if (!todrop_rate[i]) return 0;
 if (--todrop_counter[i] > 0) return 0;

 todrop_counter[i] = todrop_rate[i];
 return 1;
}
