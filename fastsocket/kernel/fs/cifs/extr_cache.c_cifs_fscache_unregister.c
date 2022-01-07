
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cifs_fscache_netfs ;
 int fscache_unregister_netfs (int *) ;

void cifs_fscache_unregister(void)
{
 fscache_unregister_netfs(&cifs_fscache_netfs);
}
