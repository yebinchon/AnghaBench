
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvidia_par {int dummy; } ;


 unsigned char NVReadSeq (struct nvidia_par*,int) ;
 int NVWriteSeq (struct nvidia_par*,int,int) ;

__attribute__((used)) static void nvidia_screen_off(struct nvidia_par *par, int on)
{
 unsigned char tmp;

 if (on) {



  tmp = NVReadSeq(par, 0x01);

  NVWriteSeq(par, 0x00, 0x01);
  NVWriteSeq(par, 0x01, tmp | 0x20);
 } else {




  tmp = NVReadSeq(par, 0x01);

  NVWriteSeq(par, 0x01, tmp & ~0x20);
  NVWriteSeq(par, 0x00, 0x03);
 }
}
