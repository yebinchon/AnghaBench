
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_nfs_open_context (void*) ;

__attribute__((used)) static void nfs_fh_get_context(void *cookie_netfs_data, void *context)
{
 get_nfs_open_context(context);
}
