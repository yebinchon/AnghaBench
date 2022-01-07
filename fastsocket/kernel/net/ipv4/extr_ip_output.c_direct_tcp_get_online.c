
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct direct_tcp_stat {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ cpu_id ;
 scalar_t__ cpu_online (scalar_t__) ;
 int direct_tcp_stats ;
 scalar_t__ nr_cpu_ids ;
 struct direct_tcp_stat* per_cpu_ptr (int ,scalar_t__) ;

__attribute__((used)) static struct direct_tcp_stat *direct_tcp_get_online(loff_t *pos)
{
 struct direct_tcp_stat *rc = ((void*)0);

 while (*pos < nr_cpu_ids)
  if (cpu_online(*pos)) {
   rc = per_cpu_ptr(direct_tcp_stats, *pos);
   break;
  } else
   ++*pos;
 cpu_id = *pos;

 return rc;
}
