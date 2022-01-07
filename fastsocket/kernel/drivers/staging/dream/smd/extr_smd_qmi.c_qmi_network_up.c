
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int txn_id; int type; unsigned char* tlv; scalar_t__ size; int client_id; int service; } ;
struct qmi_ctxt {int wds_txn_id; int wds_client_id; } ;


 int QMI_WDS ;
 int QMUX_HEADER ;
 int QMUX_OVERHEAD ;
 int qmi_add_tlv (struct qmi_msg*,int,int,...) ;
 int qmi_send (struct qmi_ctxt*,struct qmi_msg*) ;
 int strlen (char*) ;

__attribute__((used)) static int qmi_network_up(struct qmi_ctxt *ctxt, char *apn)
{
 unsigned char data[96 + QMUX_OVERHEAD];
 struct qmi_msg msg;
 char *auth_type;
 char *user;
 char *pass;

 for (user = apn; *user; user++) {
  if (*user == ' ') {
   *user++ = 0;
   break;
  }
 }
 for (pass = user; *pass; pass++) {
  if (*pass == ' ') {
   *pass++ = 0;
   break;
  }
 }

 for (auth_type = pass; *auth_type; auth_type++) {
  if (*auth_type == ' ') {
   *auth_type++ = 0;
   break;
  }
 }

 msg.service = QMI_WDS;
 msg.client_id = ctxt->wds_client_id;
 msg.txn_id = ctxt->wds_txn_id;
 msg.type = 0x0020;
 msg.size = 0;
 msg.tlv = data + QMUX_HEADER;

 ctxt->wds_txn_id += 2;

 qmi_add_tlv(&msg, 0x14, strlen(apn), apn);
 if (*auth_type)
  qmi_add_tlv(&msg, 0x16, strlen(auth_type), auth_type);
 if (*user) {
  if (!*auth_type) {
   unsigned char x;
   x = 3;
   qmi_add_tlv(&msg, 0x16, 1, &x);
  }
  qmi_add_tlv(&msg, 0x17, strlen(user), user);
  if (*pass)
   qmi_add_tlv(&msg, 0x18, strlen(pass), pass);
 }
 return qmi_send(ctxt, &msg);
}
