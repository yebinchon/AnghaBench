
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_security_struct {int sid; } ;
struct msg_msg {struct msg_security_struct* security; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SECINITSID_UNLABELED ;
 struct msg_security_struct* kzalloc (int,int ) ;

__attribute__((used)) static int msg_msg_alloc_security(struct msg_msg *msg)
{
 struct msg_security_struct *msec;

 msec = kzalloc(sizeof(struct msg_security_struct), GFP_KERNEL);
 if (!msec)
  return -ENOMEM;

 msec->sid = SECINITSID_UNLABELED;
 msg->security = msec;

 return 0;
}
