
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int txn_id; int type; unsigned char* tlv; scalar_t__ size; int client_id; int service; } ;
struct qmi_ctxt {int wds_txn_id; int wds_handle; int wds_client_id; } ;


 int QMI_WDS ;
 int QMUX_HEADER ;
 int QMUX_OVERHEAD ;
 int qmi_add_tlv (struct qmi_msg*,int,int,int *) ;
 int qmi_send (struct qmi_ctxt*,struct qmi_msg*) ;

__attribute__((used)) static int qmi_network_down(struct qmi_ctxt *ctxt)
{
 unsigned char data[16 + QMUX_OVERHEAD];
 struct qmi_msg msg;

 msg.service = QMI_WDS;
 msg.client_id = ctxt->wds_client_id;
 msg.txn_id = ctxt->wds_txn_id;
 msg.type = 0x0021;
 msg.size = 0;
 msg.tlv = data + QMUX_HEADER;

 ctxt->wds_txn_id += 2;

 qmi_add_tlv(&msg, 0x01, sizeof(ctxt->wds_handle), &ctxt->wds_handle);

 return qmi_send(ctxt, &msg);
}
