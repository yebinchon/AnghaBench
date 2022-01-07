
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 scalar_t__ CR_CHAN (int ) ;
 scalar_t__ CR_RANGE (int ) ;
 int DEBIwrite (struct comedi_device*,int ,scalar_t__) ;
 int DEBUG (char*,...) ;
 int GPIO1_HI ;
 scalar_t__ GSEL_BIPOLAR10V ;
 scalar_t__ GSEL_BIPOLAR5V ;
 int LP_GSEL ;
 int LP_ISEL ;
 int PSR_GPIO2 ;
 int P_FB_BUFFER1 ;
 int P_GPIO ;
 int P_PSR ;
 int RR7146 (int ) ;
 int WR7146 (int ,int) ;
 unsigned int s626_ai_reg_to_uint (int) ;
 int udelay (int) ;

__attribute__((used)) static int s626_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 uint16_t chan = CR_CHAN(insn->chanspec);
 uint16_t range = CR_RANGE(insn->chanspec);
 uint16_t AdcSpec = 0;
 uint32_t GpioImage;
 int n;







 DEBUG("s626_ai_insn_read: entering\n");




 if (range == 0)
  AdcSpec = (chan << 8) | (GSEL_BIPOLAR5V);
 else
  AdcSpec = (chan << 8) | (GSEL_BIPOLAR10V);


 DEBIwrite(dev, LP_GSEL, AdcSpec);


 DEBIwrite(dev, LP_ISEL, AdcSpec);

 for (n = 0; n < insn->n; n++) {


  udelay(10);


  GpioImage = RR7146(P_GPIO);

  WR7146(P_GPIO, GpioImage & ~GPIO1_HI);

  WR7146(P_GPIO, GpioImage & ~GPIO1_HI);
  WR7146(P_GPIO, GpioImage & ~GPIO1_HI);

  WR7146(P_GPIO, GpioImage | GPIO1_HI);






  while (!(RR7146(P_PSR) & PSR_GPIO2)) ;


  if (n != 0)
   data[n - 1] = s626_ai_reg_to_uint(RR7146(P_FB_BUFFER1));
  udelay(4);
 }



 GpioImage = RR7146(P_GPIO);


 WR7146(P_GPIO, GpioImage & ~GPIO1_HI);

 WR7146(P_GPIO, GpioImage & ~GPIO1_HI);
 WR7146(P_GPIO, GpioImage & ~GPIO1_HI);

 WR7146(P_GPIO, GpioImage | GPIO1_HI);




 while (!(RR7146(P_PSR) & PSR_GPIO2)) ;




 if (n != 0)
  data[n - 1] = s626_ai_reg_to_uint(RR7146(P_FB_BUFFER1));

 DEBUG("s626_ai_insn_read: samples %d, data %d\n", n, data[n - 1]);

 return n;
}
