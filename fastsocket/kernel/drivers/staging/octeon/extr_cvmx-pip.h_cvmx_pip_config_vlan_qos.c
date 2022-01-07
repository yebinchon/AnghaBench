
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qos; } ;
union cvmx_pip_qos_vlanx {scalar_t__ u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_PIP_QOS_VLANX (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_config_vlan_qos(uint64_t vlan_priority,
         uint64_t qos)
{
 union cvmx_pip_qos_vlanx pip_qos_vlanx;
 pip_qos_vlanx.u64 = 0;
 pip_qos_vlanx.s.qos = qos;
 cvmx_write_csr(CVMX_PIP_QOS_VLANX(vlan_priority), pip_qos_vlanx.u64);
}
