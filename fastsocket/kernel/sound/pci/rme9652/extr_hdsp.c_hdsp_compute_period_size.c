
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int period_bytes; int control_register; } ;


 int hdsp_decode_latency (int ) ;

__attribute__((used)) static void hdsp_compute_period_size(struct hdsp *hdsp)
{
 hdsp->period_bytes = 1 << ((hdsp_decode_latency(hdsp->control_register) + 8));
}
