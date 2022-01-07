
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op1_buf_cbcr_addr; int op1_buf_y_addr; } ;
typedef TYPE_1__ vfe_cmd_op1_ack ;
struct msm_adsp_module {int dummy; } ;


 scalar_t__ adsp_pmem_fixup (struct msm_adsp_module*,void**,int ) ;
 int size1_cbcr ;
 int size1_y ;

__attribute__((used)) static inline int verify_cmd_op_ack(struct msm_adsp_module *module,
        void *cmd_data, size_t cmd_size)
{
 vfe_cmd_op1_ack *cmd = (vfe_cmd_op1_ack *)cmd_data;
 void **addr_y = (void **)&cmd->op1_buf_y_addr;
 void **addr_cbcr = (void **)(&cmd->op1_buf_cbcr_addr);

 if (cmd_size != sizeof(vfe_cmd_op1_ack))
  return -1;
 if ((*addr_y && adsp_pmem_fixup(module, addr_y, size1_y)) ||
     (*addr_cbcr && adsp_pmem_fixup(module, addr_cbcr, size1_cbcr)))
  return -1;
 return 0;
}
