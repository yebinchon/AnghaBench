
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {unsigned int size; int txn_id; int type; int tlv; int service; int client_id; } ;
struct qmi_ctxt {int ch; } ;


 int QMI_CTL ;
 int QMUX_HEADER ;
 int qmi_dump_msg (struct qmi_msg*,char*) ;
 int smd_write (int ,int ,unsigned int) ;

__attribute__((used)) static int qmi_send(struct qmi_ctxt *ctxt, struct qmi_msg *msg)
{
 unsigned char *data;
 unsigned hlen;
 unsigned len;
 int r;

 qmi_dump_msg(msg, "send");

 if (msg->service == QMI_CTL) {
  hlen = QMUX_HEADER - 1;
 } else {
  hlen = QMUX_HEADER;
 }


 len = hlen + msg->size - 1;
 if (len > 0xffff)
  return -1;

 data = msg->tlv - hlen;


 *data++ = 0x01;


 *data++ = len;
 *data++ = len >> 8;
 *data++ = 0x00;
 *data++ = msg->service;
 *data++ = msg->client_id;


 *data++ = 0x00;
 *data++ = msg->txn_id;
 if (msg->service != QMI_CTL)
  *data++ = msg->txn_id >> 8;

 *data++ = msg->type;
 *data++ = msg->type >> 8;
 *data++ = msg->size;
 *data++ = msg->size >> 8;


 r = smd_write(ctxt->ch, msg->tlv - hlen, len + 1);

 if (r != len) {
  return -1;
 } else {
  return 0;
 }
}
