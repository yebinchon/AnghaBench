
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int * pDacWBuf; int Dacpol; } ;


 int DEBIwrite (struct comedi_device*,int ,int ) ;
 int EOS ;
 int ISR_AFOU ;
 int LP_DACPOL ;
 int MC1_A2OUT ;
 int MC_ENABLE (int ,int) ;
 int P_FB_BUFFER2 ;
 int P_ISR ;
 int P_MC1 ;
 int P_SSR ;
 int RR7146 (int ) ;
 int RSD2 ;
 int RSD3 ;
 int SETVECT (int ,int) ;
 int SIB_A2 ;
 int SSR_AF2_OUT ;
 int WR7146 (int ,int ) ;
 int XFIFO_2 ;
 int XSD2 ;
 TYPE_1__* devpriv ;

__attribute__((used)) static void SendDAC(struct comedi_device *dev, uint32_t val)
{
 DEBIwrite(dev, LP_DACPOL, devpriv->Dacpol);






 *devpriv->pDacWBuf = val;






 MC_ENABLE(P_MC1, MC1_A2OUT);







 WR7146(P_ISR, ISR_AFOU);







 while ((RR7146(P_MC1) & MC1_A2OUT) != 0) ;
 SETVECT(0, XSD2 | RSD3 | SIB_A2);







 while ((RR7146(P_SSR) & SSR_AF2_OUT) == 0) ;







 SETVECT(0, XSD2 | XFIFO_2 | RSD2 | SIB_A2 | EOS);
 if ((RR7146(P_FB_BUFFER2) & 0xFF000000) != 0) {






  while ((RR7146(P_FB_BUFFER2) & 0xFF000000) != 0) ;
 }
 SETVECT(0, RSD3 | SIB_A2 | EOS);





 while ((RR7146(P_FB_BUFFER2) & 0xFF000000) == 0) ;
}
