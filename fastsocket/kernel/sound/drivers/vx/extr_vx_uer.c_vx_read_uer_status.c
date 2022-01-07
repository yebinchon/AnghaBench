
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int CSUER ;
 int VX_SUER_CLOCK_PRESENT_MASK ;
 int VX_SUER_DATA_PRESENT_MASK ;



 int VX_SUER_FREQ_MASK ;
 unsigned int VX_UER_MODE_CONSUMER ;
 unsigned int VX_UER_MODE_NOT_PRESENT ;
 unsigned int VX_UER_MODE_PROFESSIONAL ;
 int vx_inb (struct vx_core*,int ) ;
 int vx_inl (struct vx_core*,int ) ;
 scalar_t__ vx_is_pcmcia (struct vx_core*) ;
 scalar_t__ vx_read_one_cbit (struct vx_core*,int ) ;

__attribute__((used)) static int vx_read_uer_status(struct vx_core *chip, unsigned int *mode)
{
 int val, freq;


 freq = 0;


 if (vx_is_pcmcia(chip))
     val = vx_inb(chip, CSUER);
 else
     val = vx_inl(chip, CSUER);
 if (val < 0)
  return val;

 if (val & VX_SUER_CLOCK_PRESENT_MASK) {
  switch (val & VX_SUER_FREQ_MASK) {
  case 130:
   freq = 32000;
   break;
  case 129:
   freq = 44100;
   break;
  case 128:
   freq = 48000;
   break;
  }
        }
 if (val & VX_SUER_DATA_PRESENT_MASK)

  *mode = vx_read_one_cbit(chip, 0) ?
   VX_UER_MODE_PROFESSIONAL : VX_UER_MODE_CONSUMER;
 else
  *mode = VX_UER_MODE_NOT_PRESENT;

 return freq;
}
