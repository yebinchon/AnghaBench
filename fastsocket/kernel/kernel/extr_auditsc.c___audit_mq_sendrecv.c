
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {size_t msg_len; unsigned int msg_prio; int mqdes; struct timespec abs_timeout; } ;
struct audit_context {int type; TYPE_1__ mq_sendrecv; } ;
typedef int mqd_t ;
struct TYPE_4__ {struct audit_context* audit_context; } ;


 int AUDIT_MQ_SENDRECV ;
 TYPE_2__* current ;
 int memcpy (struct timespec*,struct timespec const*,int) ;
 int memset (struct timespec*,int ,int) ;

void __audit_mq_sendrecv(mqd_t mqdes, size_t msg_len, unsigned int msg_prio,
   const struct timespec *abs_timeout)
{
 struct audit_context *context = current->audit_context;
 struct timespec *p = &context->mq_sendrecv.abs_timeout;

 if (abs_timeout)
  memcpy(p, abs_timeout, sizeof(struct timespec));
 else
  memset(p, 0, sizeof(struct timespec));

 context->mq_sendrecv.mqdes = mqdes;
 context->mq_sendrecv.msg_len = msg_len;
 context->mq_sendrecv.msg_prio = msg_prio;

 context->type = AUDIT_MQ_SENDRECV;
}
