
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int LLC_2_SEQ_NBR_MODULO ;
 int llc_circular_between (int,int,int) ;

__attribute__((used)) static u16 llc_util_ns_inside_rx_window(u8 ns, u8 vr, u8 rw)
{
 return !llc_circular_between(vr, ns,
         (vr + rw - 1) % LLC_2_SEQ_NBR_MODULO);
}
