
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vx_core {int chip_status; } ;


 int EIO ;
 int ENXIO ;
 int STATUS ;
 int VX_STATUS_MEMIRQ_MASK ;
 int VX_STAT_XILINX_LOADED ;
 int vx_inl (struct vx_core*,int ) ;
 int vx_outl (struct vx_core*,int ,int) ;

__attribute__((used)) static int vx2_test_and_ack(struct vx_core *chip)
{

 if (! (chip->chip_status & VX_STAT_XILINX_LOADED))
  return -ENXIO;

 if (! (vx_inl(chip, STATUS) & VX_STATUS_MEMIRQ_MASK))
  return -EIO;



 vx_outl(chip, STATUS, 0);



 vx_inl(chip, STATUS);

 vx_outl(chip, STATUS, VX_STATUS_MEMIRQ_MASK);


 vx_inl(chip, STATUS);

 vx_outl(chip, STATUS, 0);

 return 0;
}
