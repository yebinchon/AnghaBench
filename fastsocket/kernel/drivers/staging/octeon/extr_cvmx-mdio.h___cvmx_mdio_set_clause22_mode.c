
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
union cvmx_smix_clk {int u64; TYPE_1__ s; } ;


 int CVMX_SMIX_CLK (int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void __cvmx_mdio_set_clause22_mode(int bus_id)
{
 union cvmx_smix_clk smi_clk;

 smi_clk.u64 = cvmx_read_csr(CVMX_SMIX_CLK(bus_id));
 smi_clk.s.mode = 0;
 cvmx_write_csr(CVMX_SMIX_CLK(bus_id), smi_clk.u64);
}
