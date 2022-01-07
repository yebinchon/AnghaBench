
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msm_adsp_module {int dummy; } ;
struct TYPE_3__ {scalar_t__ msg16; } ;
struct adsp_event {scalar_t__ msg_id; TYPE_1__ data; } ;
struct TYPE_4__ {int op_buf_addr; } ;
typedef TYPE_2__ jpeg_msg_enc_op_produced ;


 scalar_t__ JPEG_MSG_ENC_OP_PRODUCED ;
 int adsp_pmem_paddr_fixup (struct msm_adsp_module*,void**) ;

int adsp_jpeg_patch_event(struct msm_adsp_module *module,
   struct adsp_event *event)
{
 if (event->msg_id == JPEG_MSG_ENC_OP_PRODUCED) {
  jpeg_msg_enc_op_produced *op = (jpeg_msg_enc_op_produced *)event->data.msg16;
  return adsp_pmem_paddr_fixup(module, (void **)&op->op_buf_addr);
 }

 return 0;
}
