
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hidp_session {int dummy; } ;


 int hidp_queue_event (struct hidp_session*,struct input_dev*,unsigned int,unsigned int,int) ;
 struct hidp_session* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int hidp_input_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)
{
 struct hidp_session *session = input_get_drvdata(dev);

 return hidp_queue_event(session, dev, type, code, value);
}
