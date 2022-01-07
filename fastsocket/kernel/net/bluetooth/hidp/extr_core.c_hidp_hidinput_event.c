
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hidp_session {int dummy; } ;
struct hid_device {struct hidp_session* driver_data; } ;


 int hidp_queue_event (struct hidp_session*,struct input_dev*,unsigned int,unsigned int,int) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int hidp_hidinput_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct hidp_session *session = hid->driver_data;

 return hidp_queue_event(session, dev, type, code, value);
}
