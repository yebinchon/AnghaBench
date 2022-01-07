
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lh7a40x_ep {scalar_t__ fifo; } ;


 int DEBUG_EP0 (char*,int ,int) ;
 int ep_index (struct lh7a40x_ep*) ;

__attribute__((used)) static __inline__ void lh7a40x_fifo_write(struct lh7a40x_ep *ep,
       unsigned char *cp, int count)
{
 volatile u32 *fifo = (volatile u32 *)ep->fifo;
 DEBUG_EP0("fifo_write: %d %d\n", ep_index(ep), count);
 while (count--)
  *fifo = *cp++;
}
