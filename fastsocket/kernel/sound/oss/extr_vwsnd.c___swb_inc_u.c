
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int swb_u_idx; int swbuf_size; int swb_u_avail; int swb_i_avail; } ;
typedef TYPE_1__ vwsnd_port_t ;



__attribute__((used)) static __inline__ unsigned int __swb_inc_u(vwsnd_port_t *port, int inc)
{
 if (inc) {
  port->swb_u_idx += inc;
  port->swb_u_idx %= port->swbuf_size;
  port->swb_u_avail -= inc;
  port->swb_i_avail += inc;
 }
 return port->swb_u_avail;
}
