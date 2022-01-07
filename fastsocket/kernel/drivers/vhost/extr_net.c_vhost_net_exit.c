
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int misc_deregister (int *) ;
 int vhost_net_misc ;

__attribute__((used)) static void vhost_net_exit(void)
{
 misc_deregister(&vhost_net_misc);
}
