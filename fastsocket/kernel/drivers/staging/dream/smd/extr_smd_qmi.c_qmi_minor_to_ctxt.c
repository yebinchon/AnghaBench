
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int minor; } ;
struct qmi_ctxt {TYPE_1__ misc; } ;


 struct qmi_ctxt qmi_device0 ;
 struct qmi_ctxt qmi_device1 ;
 struct qmi_ctxt qmi_device2 ;

__attribute__((used)) static struct qmi_ctxt *qmi_minor_to_ctxt(unsigned n)
{
 if (n == qmi_device0.misc.minor)
  return &qmi_device0;
 if (n == qmi_device1.misc.minor)
  return &qmi_device1;
 if (n == qmi_device2.misc.minor)
  return &qmi_device2;
 return 0;
}
