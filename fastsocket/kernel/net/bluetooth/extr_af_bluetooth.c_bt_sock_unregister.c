
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BT_MAX_PROTO ;
 int EINVAL ;
 int ENOENT ;
 int ** bt_proto ;
 int bt_proto_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int bt_sock_unregister(int proto)
{
 int err = 0;

 if (proto < 0 || proto >= BT_MAX_PROTO)
  return -EINVAL;

 write_lock(&bt_proto_lock);

 if (!bt_proto[proto])
  err = -ENOENT;
 else
  bt_proto[proto] = ((void*)0);

 write_unlock(&bt_proto_lock);

 return err;
}
