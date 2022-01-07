
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dat; scalar_t__ pending; } ;
union cvmx_smix_wr_dat {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int phy_adr; int reg_adr; int phy_op; } ;
union cvmx_smix_cmd {void* u64; TYPE_1__ s; } ;


 int CVMX_SMIX_CMD (int) ;
 int CVMX_SMIX_WR_DAT (int) ;
 int MDIO_CLAUSE_45_ADDRESS ;
 int MDIO_CLAUSE_45_WRITE ;
 int OCTEON_FEATURE_MDIO_CLAUSE_45 ;
 int __cvmx_mdio_set_clause45_mode (int) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,void*) ;
 int octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_mdio_45_write(int bus_id, int phy_id, int device,
         int location, int val)
{
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_wr_dat smi_wr;
 int timeout = 1000;

 if (!octeon_has_feature(OCTEON_FEATURE_MDIO_CLAUSE_45))
  return -1;

 __cvmx_mdio_set_clause45_mode(bus_id);

 smi_wr.u64 = 0;
 smi_wr.s.dat = location;
 cvmx_write_csr(CVMX_SMIX_WR_DAT(bus_id), smi_wr.u64);

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = MDIO_CLAUSE_45_ADDRESS;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = device;
 cvmx_write_csr(CVMX_SMIX_CMD(bus_id), smi_cmd.u64);

 do {
  cvmx_wait(1000);
  smi_wr.u64 = cvmx_read_csr(CVMX_SMIX_WR_DAT(bus_id));
 } while (smi_wr.s.pending && --timeout);
 if (timeout <= 0)
  return -1;

 smi_wr.u64 = 0;
 smi_wr.s.dat = val;
 cvmx_write_csr(CVMX_SMIX_WR_DAT(bus_id), smi_wr.u64);

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = MDIO_CLAUSE_45_WRITE;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = device;
 cvmx_write_csr(CVMX_SMIX_CMD(bus_id), smi_cmd.u64);

 do {
  cvmx_wait(1000);
  smi_wr.u64 = cvmx_read_csr(CVMX_SMIX_WR_DAT(bus_id));
 } while (smi_wr.s.pending && --timeout);
 if (timeout <= 0)
  return -1;

 return 0;
}
