
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8a66597_td {int maxpacket; int address; TYPE_1__* urb; } ;
struct r8a66597 {int dummy; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ setup_packet; } ;


 unsigned long DCPCTR ;
 unsigned long DCPMAXP ;
 unsigned long INTSTS1 ;
 int SACK ;
 int SIGN ;
 int SUREQ ;
 unsigned long USBREQ ;
 int le16_to_cpu (int ) ;
 int make_devsel (int ) ;
 int r8a66597_write (struct r8a66597*,int,unsigned long) ;

__attribute__((used)) static void prepare_setup_packet(struct r8a66597 *r8a66597,
     struct r8a66597_td *td)
{
 int i;
 __le16 *p = (__le16 *)td->urb->setup_packet;
 unsigned long setup_addr = USBREQ;

 r8a66597_write(r8a66597, make_devsel(td->address) | td->maxpacket,
         DCPMAXP);
 r8a66597_write(r8a66597, ~(SIGN | SACK), INTSTS1);

 for (i = 0; i < 4; i++) {
  r8a66597_write(r8a66597, le16_to_cpu(p[i]), setup_addr);
  setup_addr += 2;
 }
 r8a66597_write(r8a66597, SUREQ, DCPCTR);
}
