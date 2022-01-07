
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int dummy; } ;


 int DATA ;
 int HIFREQ ;
 int RUER ;
 int VX_DATA_CODEC_MASK ;
 int vx_inl (struct vx_core*,int ) ;
 int vx_outl (struct vx_core*,int ,int ) ;

__attribute__((used)) static void vx2_old_write_codec_bit(struct vx_core *chip, int codec, unsigned int data)
{
 int i;


 vx_inl(chip, HIFREQ);

 for (i = 0; i < 24; i++, data <<= 1)
  vx_outl(chip, DATA, ((data & 0x800000) ? VX_DATA_CODEC_MASK : 0));


 vx_inl(chip, RUER);
}
