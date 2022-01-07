
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int dummy; } ;
struct qmi_ctxt {int dns2; int dns1; int gateway; int mask; int addr; } ;


 unsigned int qmi_get_tlv (struct qmi_msg*,int,int,unsigned char*) ;
 int swapaddr (unsigned char*,int ) ;
 unsigned char* zero ;

__attribute__((used)) static void qmi_read_runtime_profile(struct qmi_ctxt *ctxt, struct qmi_msg *msg)
{
 unsigned char tmp[4];
 unsigned r;

 r = qmi_get_tlv(msg, 0x1e, 4, tmp);
 swapaddr(r ? zero : tmp, ctxt->addr);
 r = qmi_get_tlv(msg, 0x21, 4, tmp);
 swapaddr(r ? zero : tmp, ctxt->mask);
 r = qmi_get_tlv(msg, 0x20, 4, tmp);
 swapaddr(r ? zero : tmp, ctxt->gateway);
 r = qmi_get_tlv(msg, 0x15, 4, tmp);
 swapaddr(r ? zero : tmp, ctxt->dns1);
 r = qmi_get_tlv(msg, 0x16, 4, tmp);
 swapaddr(r ? zero : tmp, ctxt->dns2);
}
