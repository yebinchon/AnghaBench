
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int period_bytes; int control_register; } ;


 int hdspm_decode_latency (int ) ;

__attribute__((used)) static inline void hdspm_compute_period_size(struct hdspm * hdspm)
{
 hdspm->period_bytes =
     1 << ((hdspm_decode_latency(hdspm->control_register) + 8));
}
