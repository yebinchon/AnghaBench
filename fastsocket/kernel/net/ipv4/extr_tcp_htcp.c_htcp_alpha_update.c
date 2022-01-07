
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct htcp {int minRTT; int alpha; int beta; } ;


 int ALPHA_BASE ;
 int HZ ;
 int htcp_cong_time (struct htcp*) ;
 int max (int,unsigned int) ;
 int min (int ,unsigned int) ;
 scalar_t__ use_rtt_scaling ;

__attribute__((used)) static inline void htcp_alpha_update(struct htcp *ca)
{
 u32 minRTT = ca->minRTT;
 u32 factor = 1;
 u32 diff = htcp_cong_time(ca);

 if (diff > HZ) {
  diff -= HZ;
  factor = 1 + (10 * diff + ((diff / 2) * (diff / 2) / HZ)) / HZ;
 }

 if (use_rtt_scaling && minRTT) {
  u32 scale = (HZ << 3) / (10 * minRTT);


  scale = min(max(scale, 1U << 2), 10U << 3);
  factor = (factor << 3) / scale;
  if (!factor)
   factor = 1;
 }

 ca->alpha = 2 * factor * ((1 << 7) - ca->beta);
 if (!ca->alpha)
  ca->alpha = ALPHA_BASE;
}
