
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_proto_family {int dummy; } ;


 int BT_MAX_PROTO ;
 int EEXIST ;
 int EINVAL ;
 struct net_proto_family** bt_proto ;
 int bt_proto_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int bt_sock_register(int proto, struct net_proto_family *ops)
{
 int err = 0;

 if (proto < 0 || proto >= BT_MAX_PROTO)
  return -EINVAL;

 write_lock(&bt_proto_lock);

 if (bt_proto[proto])
  err = -EEXIST;
 else
  bt_proto[proto] = ops;

 write_unlock(&bt_proto_lock);

 return err;
}
