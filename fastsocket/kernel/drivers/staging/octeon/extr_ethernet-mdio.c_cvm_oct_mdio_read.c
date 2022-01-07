
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
union cvmx_smix_rd_dat {TYPE_1__ s; int u64; } ;
struct TYPE_4__ {int phy_op; int phy_adr; int reg_adr; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_2__ s; } ;
struct net_device {int dummy; } ;


 int CVMX_SMIX_CMD (int ) ;
 int CVMX_SMIX_RD_DAT (int ) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int in_interrupt () ;
 int yield () ;

__attribute__((used)) static int cvm_oct_mdio_read(struct net_device *dev, int phy_id, int location)
{
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_rd_dat smi_rd;

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = 1;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = location;
 cvmx_write_csr(CVMX_SMIX_CMD(0), smi_cmd.u64);

 do {
  if (!in_interrupt())
   yield();
  smi_rd.u64 = cvmx_read_csr(CVMX_SMIX_RD_DAT(0));
 } while (smi_rd.s.pending);

 if (smi_rd.s.val)
  return smi_rd.s.dat;
 else
  return 0;
}
