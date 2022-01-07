
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int jiffies_64 ;
 unsigned long read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned long) ;
 int xtime_lock ;

u64 get_jiffies_64(void)
{
 unsigned long seq;
 u64 ret;

 do {
  seq = read_seqbegin(&xtime_lock);
  ret = jiffies_64;
 } while (read_seqretry(&xtime_lock, seq));
 return ret;
}
