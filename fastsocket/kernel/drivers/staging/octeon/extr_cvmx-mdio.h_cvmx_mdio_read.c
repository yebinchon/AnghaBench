
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
union cvmx_smix_rd_dat {TYPE_1__ s; int u64; } ;
struct TYPE_4__ {int phy_adr; int reg_adr; int phy_op; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_2__ s; } ;


 int CVMX_SMIX_CMD (int) ;
 int CVMX_SMIX_RD_DAT (int) ;
 int MDIO_CLAUSE_22_READ ;
 int OCTEON_FEATURE_MDIO_CLAUSE_45 ;
 int __cvmx_mdio_set_clause22_mode (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_mdio_read(int bus_id, int phy_id, int location)
{
 union cvmx_smix_cmd smi_cmd;
 union cvmx_smix_rd_dat smi_rd;
 int timeout = 1000;

 if (octeon_has_feature(OCTEON_FEATURE_MDIO_CLAUSE_45))
  __cvmx_mdio_set_clause22_mode(bus_id);

 smi_cmd.u64 = 0;
 smi_cmd.s.phy_op = MDIO_CLAUSE_22_READ;
 smi_cmd.s.phy_adr = phy_id;
 smi_cmd.s.reg_adr = location;
 cvmx_write_csr(CVMX_SMIX_CMD(bus_id), smi_cmd.u64);

 do {
  cvmx_wait(1000);
  smi_rd.u64 = cvmx_read_csr(CVMX_SMIX_RD_DAT(bus_id));
 } while (smi_rd.s.pending && timeout--);

 if (smi_rd.s.val)
  return smi_rd.s.dat;
 else
  return -1;
}
