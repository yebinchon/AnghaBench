
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cvmx_pip_prt_tagx {int u64; } ;
union cvmx_pip_prt_cfgx {int u64; } ;
typedef int uint64_t ;


 int CVMX_PIP_PRT_CFGX (int ) ;
 int CVMX_PIP_PRT_TAGX (int ) ;
 int cvmx_write_csr (int ,int ) ;

__attribute__((used)) static inline void cvmx_pip_config_port(uint64_t port_num,
     union cvmx_pip_prt_cfgx port_cfg,
     union cvmx_pip_prt_tagx port_tag_cfg)
{
 cvmx_write_csr(CVMX_PIP_PRT_CFGX(port_num), port_cfg.u64);
 cvmx_write_csr(CVMX_PIP_PRT_TAGX(port_num), port_tag_cfg.u64);
}
