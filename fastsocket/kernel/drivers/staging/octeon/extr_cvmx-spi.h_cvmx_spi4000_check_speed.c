
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cvmx_gmxx_rxx_rx_inbnd {scalar_t__ u64; } ;



__attribute__((used)) static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(
 int interface,
 int port)
{
 union cvmx_gmxx_rxx_rx_inbnd r;
 r.u64 = 0;
 return r;
}
