
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTPROTO_CMTP ;
 int BT_ERR (char*) ;
 int bt_sock_register (int ,int *) ;
 int cmtp_proto ;
 int cmtp_sock_family_ops ;
 int proto_register (int *,int ) ;
 int proto_unregister (int *) ;

int cmtp_init_sockets(void)
{
 int err;

 err = proto_register(&cmtp_proto, 0);
 if (err < 0)
  return err;

 err = bt_sock_register(BTPROTO_CMTP, &cmtp_sock_family_ops);
 if (err < 0)
  goto error;

 return 0;

error:
 BT_ERR("Can't register CMTP socket");
 proto_unregister(&cmtp_proto);
 return err;
}
