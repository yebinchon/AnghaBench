
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_sync_buff {int dummy; } ;


 int IPVS_SYNC_FLUSH_TIME ;
 struct ip_vs_sync_buff* get_curr_sync_buff (int ) ;
 struct ip_vs_sync_buff* sb_dequeue () ;

__attribute__((used)) static inline struct ip_vs_sync_buff *
next_sync_buff(void)
{
 struct ip_vs_sync_buff *sb;

 sb = sb_dequeue();
 if (sb)
  return sb;

 return get_curr_sync_buff(IPVS_SYNC_FLUSH_TIME);
}
