
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BUG_ON (int) ;
 int memset (int *,int ,int) ;
 int put_unaligned (int,int *) ;
 int snmp_fold_field (void**,int) ;

__attribute__((used)) static inline void __snmp6_fill_stats(u64 *stats, void **mib, int items,
          int bytes)
{
 int i;
 int pad = bytes - sizeof(u64) * items;
 BUG_ON(pad < 0);


 put_unaligned(items, &stats[0]);
 for (i = 1; i < items; i++)
  put_unaligned(snmp_fold_field(mib, i), &stats[i]);

 memset(&stats[items], 0, pad);
}
