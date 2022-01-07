
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VHOST_NET_VQ_TX ;
 scalar_t__ experimental_zcopytx ;
 int misc_register (int *) ;
 int vhost_enable_zcopy (int ) ;
 int vhost_net_misc ;

__attribute__((used)) static int vhost_net_init(void)
{
 if (experimental_zcopytx)
  vhost_enable_zcopy(VHOST_NET_VQ_TX);
 return misc_register(&vhost_net_misc);
}
