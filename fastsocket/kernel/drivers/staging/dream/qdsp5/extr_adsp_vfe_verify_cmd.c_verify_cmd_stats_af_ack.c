
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int af_stats_op_buf; } ;
typedef TYPE_1__ vfe_cmd_stats_af_ack ;
struct msm_adsp_module {int dummy; } ;


 scalar_t__ adsp_pmem_fixup (struct msm_adsp_module*,void**,int ) ;
 int af_size ;

__attribute__((used)) static inline int verify_cmd_stats_af_ack(struct msm_adsp_module *module,
       void *cmd_data, size_t cmd_size)
{
 vfe_cmd_stats_af_ack *cmd = (vfe_cmd_stats_af_ack *)cmd_data;
 void **addr = (void **)&cmd->af_stats_op_buf;

 if (cmd_size != sizeof(vfe_cmd_stats_af_ack))
  return -1;

 if (*addr && adsp_pmem_fixup(module, addr, af_size))
  return -1;
 return 0;
}
