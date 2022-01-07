
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dummy; } ;


 int nvGetClocks (struct nvidia_par*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void nv30UpdateArbitrationSettings (
    struct nvidia_par *par,
    unsigned int *burst,
    unsigned int *lwm
)
{
    unsigned int MClk, NVClk;
    unsigned int fifo_size, burst_size, graphics_lwm;

    fifo_size = 2048;
    burst_size = 512;
    graphics_lwm = fifo_size - burst_size;

    nvGetClocks(par, &MClk, &NVClk);

    *burst = 0;
    burst_size >>= 5;
    while(burst_size >>= 1) (*burst)++;
    *lwm = graphics_lwm >> 3;
}
