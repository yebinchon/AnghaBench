
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int txn_id; int type; unsigned char* tlv; scalar_t__ size; int client_id; int service; } ;
struct qmi_ctxt {int ctl_txn_id; } ;


 int QMI_CTL ;
 unsigned char QMI_WDS ;
 int QMUX_HEADER ;
 int QMUX_OVERHEAD ;
 int qmi_add_tlv (struct qmi_msg*,int,int,unsigned char*) ;
 int qmi_ctl_client_id ;
 int qmi_send (struct qmi_ctxt*,struct qmi_msg*) ;

__attribute__((used)) static int qmi_request_wds_cid(struct qmi_ctxt *ctxt)
{
 unsigned char data[64 + QMUX_OVERHEAD];
 struct qmi_msg msg;
 unsigned char n;

 msg.service = QMI_CTL;
 msg.client_id = qmi_ctl_client_id;
 msg.txn_id = ctxt->ctl_txn_id;
 msg.type = 0x0022;
 msg.size = 0;
 msg.tlv = data + QMUX_HEADER;

 ctxt->ctl_txn_id += 2;

 n = QMI_WDS;
 qmi_add_tlv(&msg, 0x01, 0x01, &n);

 return qmi_send(ctxt, &msg);
}
