
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int coutPolarity; int autoLoadResetRcap; int hwCtEnableSource; int ctEnableCtrl; int clockSource; int countDir; int countDirCtrl; int preloadRegSel; int reserved; int outputRegLatchCtrl; int coutSource; } ;
union cmReg {short value; TYPE_2__ reg; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int* data; int n; int chanspec; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {TYPE_1__* s526_gpct_config; } ;
struct TYPE_4__ {int* data; int app; } ;


 int ADDR_CHAN_REG (int ,int) ;
 int CR_CHAN (int ) ;
 int EINVAL ;
 int GPCT_IndexPhaseHighHigh ;
 int GPCT_IndexPhaseHighLow ;
 int GPCT_IndexPhaseLowHigh ;
 int GPCT_IndexPhaseLowLow ;
 int GPCT_RESET_COUNTER_ON_INDEX ;
 int GPCT_X2 ;
 int GPCT_X4 ;



 int MAX_GPCT_CONFIG_DATA ;
 int PositionMeasurement ;
 int PulseTrainGeneration ;
 int REG_C0C ;
 int REG_C0H ;
 int REG_C0L ;
 int REG_C0M ;
 int SinglePulseGeneration ;
 TYPE_3__* devpriv ;
 int outw (short,int ) ;
 int printk (char*) ;

__attribute__((used)) static int s526_gpct_insn_config(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{
 int subdev_channel = CR_CHAN(insn->chanspec);
 int i;
 short value;
 union cmReg cmReg;



 for (i = 0; i < MAX_GPCT_CONFIG_DATA; i++) {
  devpriv->s526_gpct_config[subdev_channel].data[i] =
      insn->data[i];

 }



 switch (insn->data[0]) {
 case 129:






  printk("s526: GPCT_INSN_CONFIG: Configuring Encoder\n");
  devpriv->s526_gpct_config[subdev_channel].app =
      PositionMeasurement;
  cmReg.value = insn->data[1] & 0xFFFF;


  outw(cmReg.value, ADDR_CHAN_REG(REG_C0M, subdev_channel));


  if (cmReg.reg.autoLoadResetRcap == 0) {
   outw(0x8000, ADDR_CHAN_REG(REG_C0C, subdev_channel));

  }
  break;

 case 128:







  printk("s526: GPCT_INSN_CONFIG: Configuring SPG\n");
  devpriv->s526_gpct_config[subdev_channel].app =
      SinglePulseGeneration;


  cmReg.value = (short)(insn->data[1] & 0xFFFF);
  cmReg.reg.preloadRegSel = 0;
  outw(cmReg.value, ADDR_CHAN_REG(REG_C0M, subdev_channel));


  value = (short)((insn->data[2] >> 16) & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0H, subdev_channel));


  value = (short)(insn->data[2] & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0L, subdev_channel));


  cmReg.value = (short)(insn->data[1] & 0xFFFF);
  cmReg.reg.preloadRegSel = 1;
  outw(cmReg.value, ADDR_CHAN_REG(REG_C0M, subdev_channel));


  value = (short)((insn->data[3] >> 16) & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0H, subdev_channel));


  value = (short)(insn->data[3] & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0L, subdev_channel));


  if (insn->data[4] != 0) {
   value = (short)(insn->data[4] & 0xFFFF);
   outw(value, ADDR_CHAN_REG(REG_C0C, subdev_channel));
  }
  break;

 case 130:







  printk("s526: GPCT_INSN_CONFIG: Configuring PTG\n");
  devpriv->s526_gpct_config[subdev_channel].app =
      PulseTrainGeneration;


  cmReg.value = (short)(insn->data[1] & 0xFFFF);
  cmReg.reg.preloadRegSel = 0;
  outw(cmReg.value, ADDR_CHAN_REG(REG_C0M, subdev_channel));


  value = (short)((insn->data[2] >> 16) & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0H, subdev_channel));


  value = (short)(insn->data[2] & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0L, subdev_channel));


  cmReg.value = (short)(insn->data[1] & 0xFFFF);
  cmReg.reg.preloadRegSel = 1;
  outw(cmReg.value, ADDR_CHAN_REG(REG_C0M, subdev_channel));


  value = (short)((insn->data[3] >> 16) & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0H, subdev_channel));


  value = (short)(insn->data[3] & 0xFFFF);
  outw(value, ADDR_CHAN_REG(REG_C0L, subdev_channel));


  if (insn->data[4] != 0) {
   value = (short)(insn->data[4] & 0xFFFF);
   outw(value, ADDR_CHAN_REG(REG_C0C, subdev_channel));
  }
  break;

 default:
  printk("s526: unsupported GPCT_insn_config\n");
  return -EINVAL;
  break;
 }

 return insn->n;
}
