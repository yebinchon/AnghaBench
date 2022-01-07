
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ libzfs_sharetab; scalar_t__ libzfs_mnttab; int libzfs_fd; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int B_TRUE ;
 int close (int ) ;
 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;
 int libzfs_core_fini () ;
 int libzfs_fru_clear (TYPE_1__*,int ) ;
 int libzfs_mnttab_fini (TYPE_1__*) ;
 int namespace_clear (TYPE_1__*) ;
 int zfs_uninit_libshare (TYPE_1__*) ;
 int zpool_free_handles (TYPE_1__*) ;

void
libzfs_fini(libzfs_handle_t *hdl)
{
 (void) close(hdl->libzfs_fd);
 if (hdl->libzfs_mnttab)
  (void) fclose(hdl->libzfs_mnttab);
 if (hdl->libzfs_sharetab)
  (void) fclose(hdl->libzfs_sharetab);
 zfs_uninit_libshare(hdl);
 zpool_free_handles(hdl);



 namespace_clear(hdl);
 libzfs_mnttab_fini(hdl);
 libzfs_core_fini();
 free(hdl);
}
