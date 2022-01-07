
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int lzc_pool_checkpoint_discard (int ) ;
 int snprintf (char*,int,char*,int ) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_discard_checkpoint(zpool_handle_t *zhp)
{
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 char msg[1024];
 int error;

 error = lzc_pool_checkpoint_discard(zhp->zpool_name);
 if (error != 0) {
  (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
      "cannot discard checkpoint in '%s'"), zhp->zpool_name);
  (void) zpool_standard_error(hdl, error, msg);
  return (-1);
 }

 return (0);
}
