
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int op1_buf_cbcr_addr; int op1_buf_y_addr; } ;
typedef TYPE_2__ vfe_msg_op1 ;
struct msm_adsp_module {int dummy; } ;
struct TYPE_3__ {scalar_t__ msg16; } ;
struct adsp_event {TYPE_1__ data; } ;


 scalar_t__ adsp_pmem_paddr_fixup (struct msm_adsp_module*,void**) ;

__attribute__((used)) static int patch_op_event(struct msm_adsp_module *module,
    struct adsp_event *event)
{
 vfe_msg_op1 *op = (vfe_msg_op1 *)event->data.msg16;
 if (adsp_pmem_paddr_fixup(module, (void **)&op->op1_buf_y_addr) ||
     adsp_pmem_paddr_fixup(module, (void **)&op->op1_buf_cbcr_addr))
  return -1;
 return 0;
}
