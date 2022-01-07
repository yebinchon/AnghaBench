
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qos; } ;
union cvmx_pip_qos_diffx {scalar_t__ u64; TYPE_1__ s; } ;
typedef int uint64_t ;


 int CVMX_PIP_QOS_DIFFX (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void cvmx_pip_config_diffserv_qos(uint64_t diffserv, uint64_t qos)
{
 union cvmx_pip_qos_diffx pip_qos_diffx;
 pip_qos_diffx.u64 = 0;
 pip_qos_diffx.s.qos = qos;
 cvmx_write_csr(CVMX_PIP_QOS_DIFFX(diffserv), pip_qos_diffx.u64);
}
