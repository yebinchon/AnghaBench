
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hdspm {int dummy; } ;


 int HDSPM_freqReg ;
 int div_u64 (int,int) ;
 int hdspm_write (struct hdspm*,int ,int ) ;
 int snd_BUG_ON (int) ;

__attribute__((used)) static void hdspm_set_dds_value(struct hdspm *hdspm, int rate)
{
 u64 n;

 if (rate >= 112000)
  rate /= 4;
 else if (rate >= 56000)
  rate /= 2;






 n = 110100480000000ULL;
 n = div_u64(n, rate);

 snd_BUG_ON(n >> 32);
 hdspm_write(hdspm, HDSPM_freqReg, (u32)n);
}
