
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xsd_sockmsg {scalar_t__ type; scalar_t__ len; } ;
struct TYPE_2__ {int transaction_mutex; int request_mutex; } ;


 void* ERR_PTR (int) ;
 scalar_t__ XS_ERROR ;
 scalar_t__ XS_TRANSACTION_END ;
 scalar_t__ XS_TRANSACTION_START ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* read_reply (scalar_t__*,scalar_t__*) ;
 int up_read (int *) ;
 int xb_write (struct xsd_sockmsg*,scalar_t__) ;
 TYPE_1__ xs_state ;

void *xenbus_dev_request_and_reply(struct xsd_sockmsg *msg)
{
 void *ret;
 struct xsd_sockmsg req_msg = *msg;
 int err;

 if (req_msg.type == XS_TRANSACTION_START)
  down_read(&xs_state.transaction_mutex);

 mutex_lock(&xs_state.request_mutex);

 err = xb_write(msg, sizeof(*msg) + msg->len);
 if (err) {
  msg->type = XS_ERROR;
  ret = ERR_PTR(err);
 } else
  ret = read_reply(&msg->type, &msg->len);

 mutex_unlock(&xs_state.request_mutex);

 if ((msg->type == XS_TRANSACTION_END) ||
     ((req_msg.type == XS_TRANSACTION_START) &&
      (msg->type == XS_ERROR)))
  up_read(&xs_state.transaction_mutex);

 return ret;
}
