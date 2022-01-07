
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds_device {int dummy; } ;


 int COMM_1_WIRE_RESET ;
 int COMM_IM ;
 int SPEED_NORMAL ;
 int ds_send_control (struct ds_device*,int,int ) ;

__attribute__((used)) static int ds_reset(struct ds_device *dev)
{
 int err;
 err = ds_send_control(dev, COMM_1_WIRE_RESET | COMM_IM, SPEED_NORMAL);
 if (err)
  return err;

 return 0;
}
