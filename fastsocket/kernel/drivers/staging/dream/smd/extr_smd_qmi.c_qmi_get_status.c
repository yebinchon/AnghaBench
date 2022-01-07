
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_msg {int dummy; } ;
typedef int status ;


 int QMI_RESULT_FAILURE ;
 scalar_t__ qmi_get_tlv (struct qmi_msg*,int,int,unsigned short*) ;

__attribute__((used)) static unsigned qmi_get_status(struct qmi_msg *msg, unsigned *error)
{
 unsigned short status[2];
 if (qmi_get_tlv(msg, 0x02, sizeof(status), status)) {
  *error = 0;
  return QMI_RESULT_FAILURE;
 } else {
  *error = status[1];
  return status[0];
 }
}
