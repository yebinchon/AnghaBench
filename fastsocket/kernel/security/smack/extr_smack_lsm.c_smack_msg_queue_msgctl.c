
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_queue {int dummy; } ;


 int EINVAL ;




 int MAY_READ ;
 int MAY_READWRITE ;


 int smk_curacc_msq (struct msg_queue*,int) ;

__attribute__((used)) static int smack_msg_queue_msgctl(struct msg_queue *msq, int cmd)
{
 int may;

 switch (cmd) {
 case 130:
 case 128:
  may = MAY_READ;
  break;
 case 131:
 case 132:
  may = MAY_READWRITE;
  break;
 case 133:
 case 129:



  return 0;
 default:
  return -EINVAL;
 }

 return smk_curacc_msq(msq, may);
}
