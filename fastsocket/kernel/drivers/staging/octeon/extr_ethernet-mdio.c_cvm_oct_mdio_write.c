
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dat; scalar_t__ pending; } ;
union cvmx_smix_wr_dat {scalar_t__ u64; TYPE_2__ s; } ;
struct TYPE_3__ {int phy_adr; int reg_adr; scalar_t__ phy_op; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_1__ s; } ;
struct net_device {int dummy; } ;


 int CVMX_SMIX_CMD (int ) ;
 int CVMX_SMIX_WR_DAT (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int in_interrupt () ;
 int yield () ;

__attribute__((used)) static void cvm_oct_mdio_write(struct net_device *dev, int phy_id, int location,
          int val)
{
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_wr_dat smi_wr;

 smi_wr.u64 = 0;
 smi_wr.s.dat = val;
 cvmx_write_csr(CVMX_SMIX_WR_DAT(0), smi_wr.u64);

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = 0;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = location;
 cvmx_write_csr(CVMX_SMIX_CMD(0), smi_cmd.u64);

 do {
  if (!in_interrupt())
   yield();
  smi_wr.u64 = cvmx_read_csr(CVMX_SMIX_WR_DAT(0));
 } while (smi_wr.s.pending);
}
