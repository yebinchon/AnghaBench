
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {int inactconns; int activeconns; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline unsigned int
ip_vs_wlc_dest_overhead(struct ip_vs_dest *dest)
{







 return (atomic_read(&dest->activeconns) << 8) +
  atomic_read(&dest->inactconns);
}
