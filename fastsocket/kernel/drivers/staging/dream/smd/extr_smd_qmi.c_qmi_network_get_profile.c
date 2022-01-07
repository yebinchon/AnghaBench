
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int txn_id; int type; unsigned char* tlv; scalar_t__ size; int client_id; int service; } ;
struct qmi_ctxt {int wds_txn_id; int wds_client_id; } ;


 int QMI_WDS ;
 int QMUX_HEADER ;
 int QMUX_OVERHEAD ;
 int qmi_send (struct qmi_ctxt*,struct qmi_msg*) ;

__attribute__((used)) static int qmi_network_get_profile(struct qmi_ctxt *ctxt)
{
 unsigned char data[96 + QMUX_OVERHEAD];
 struct qmi_msg msg;

 msg.service = QMI_WDS;
 msg.client_id = ctxt->wds_client_id;
 msg.txn_id = ctxt->wds_txn_id;
 msg.type = 0x002D;
 msg.size = 0;
 msg.tlv = data + QMUX_HEADER;

 ctxt->wds_txn_id += 2;

 return qmi_send(ctxt, &msg);
}
