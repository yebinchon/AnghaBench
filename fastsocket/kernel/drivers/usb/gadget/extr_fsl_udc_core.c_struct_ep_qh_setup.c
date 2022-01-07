
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_udc {struct ep_queue_head* ep_qh; } ;
struct ep_queue_head {int next_dtd_ptr; scalar_t__ size_ioc_int_sts; int max_pkt_length; } ;


 unsigned int EP_QUEUE_HEAD_IOS ;
 unsigned int EP_QUEUE_HEAD_MAX_PKT_LEN_POS ;
 unsigned char EP_QUEUE_HEAD_MULT_POS ;
 unsigned int EP_QUEUE_HEAD_ZLT_SEL ;




 int VDBG (char*,unsigned char) ;
 int cpu_to_le32 (unsigned int) ;

__attribute__((used)) static void struct_ep_qh_setup(struct fsl_udc *udc, unsigned char ep_num,
  unsigned char dir, unsigned char ep_type,
  unsigned int max_pkt_len,
  unsigned int zlt, unsigned char mult)
{
 struct ep_queue_head *p_QH = &udc->ep_qh[2 * ep_num + dir];
 unsigned int tmp = 0;


 switch (ep_type) {
 case 130:

  tmp = (max_pkt_len << EP_QUEUE_HEAD_MAX_PKT_LEN_POS)
   | EP_QUEUE_HEAD_IOS;
  break;
 case 128:
  tmp = (max_pkt_len << EP_QUEUE_HEAD_MAX_PKT_LEN_POS)
   | (mult << EP_QUEUE_HEAD_MULT_POS);
  break;
 case 131:
 case 129:
  tmp = max_pkt_len << EP_QUEUE_HEAD_MAX_PKT_LEN_POS;
  break;
 default:
  VDBG("error ep type is %d", ep_type);
  return;
 }
 if (zlt)
  tmp |= EP_QUEUE_HEAD_ZLT_SEL;

 p_QH->max_pkt_length = cpu_to_le32(tmp);
 p_QH->next_dtd_ptr = 1;
 p_QH->size_ioc_int_sts = 0;

 return;
}
