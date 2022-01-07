
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTPROTO_CMTP ;
 int BT_ERR (char*) ;
 scalar_t__ bt_sock_unregister (int ) ;
 int cmtp_proto ;
 int proto_unregister (int *) ;

void cmtp_cleanup_sockets(void)
{
 if (bt_sock_unregister(BTPROTO_CMTP) < 0)
  BT_ERR("Can't unregister CMTP socket");

 proto_unregister(&cmtp_proto);
}
