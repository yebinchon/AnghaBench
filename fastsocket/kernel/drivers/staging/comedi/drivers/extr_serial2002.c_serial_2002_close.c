
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ tty; } ;


 int IS_ERR (scalar_t__) ;
 TYPE_1__* devpriv ;
 int filp_close (scalar_t__,int ) ;

__attribute__((used)) static void serial_2002_close(struct comedi_device *dev)
{
 if (!IS_ERR(devpriv->tty) && (devpriv->tty != 0)) {
  filp_close(devpriv->tty, 0);
 }
}
