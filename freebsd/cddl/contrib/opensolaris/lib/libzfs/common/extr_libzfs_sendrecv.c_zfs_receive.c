
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int uint64_t ;
struct TYPE_4__ {int nomount; } ;
typedef TYPE_1__ recvflags_t ;
typedef int prop_changelist_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int avl_tree_t ;


 int CL_GATHER_MOUNT_ALWAYS ;
 int ENOENT ;
 int O_EXCL ;
 int O_RDWR ;
 int VERIFY (int) ;
 int ZFS_DEV ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_TYPE_FILESYSTEM ;
 int changelist_free (int *) ;
 int * changelist_gather (int *,int ,int ,int ) ;
 int changelist_postfix (int *) ;
 scalar_t__ close (int) ;
 int free (char*) ;
 int nvlist_lookup_string (int *,char*,char**) ;
 int open (int ,int) ;
 int zfs_close (int *) ;
 int * zfs_open (int *,char*,int ) ;
 int zfs_receive_impl (int *,char const*,char*,TYPE_1__*,int,int *,int *,int *,char**,int,int *,int *) ;

int
zfs_receive(libzfs_handle_t *hdl, const char *tosnap, nvlist_t *props,
    recvflags_t *flags, int infd, avl_tree_t *stream_avl)
{
 char *top_zfs = ((void*)0);
 int err;
 int cleanup_fd;
 uint64_t action_handle = 0;
 char *originsnap = ((void*)0);
 if (props) {
  err = nvlist_lookup_string(props, "origin", &originsnap);
  if (err && err != ENOENT)
   return (err);
 }

 cleanup_fd = open(ZFS_DEV, O_RDWR|O_EXCL);
 VERIFY(cleanup_fd >= 0);

 err = zfs_receive_impl(hdl, tosnap, originsnap, flags, infd, ((void*)0), ((void*)0),
     stream_avl, &top_zfs, cleanup_fd, &action_handle, ((void*)0));

 VERIFY(0 == close(cleanup_fd));

 if (err == 0 && !flags->nomount && top_zfs) {
  zfs_handle_t *zhp;
  prop_changelist_t *clp;

  zhp = zfs_open(hdl, top_zfs, ZFS_TYPE_FILESYSTEM);
  if (zhp != ((void*)0)) {
   clp = changelist_gather(zhp, ZFS_PROP_MOUNTPOINT,
       CL_GATHER_MOUNT_ALWAYS, 0);
   zfs_close(zhp);
   if (clp != ((void*)0)) {

    err = changelist_postfix(clp);
    changelist_free(clp);
   }
  }
  if (zhp == ((void*)0) || clp == ((void*)0) || err)
   err = -1;
 }
 if (top_zfs)
  free(top_zfs);

 return (err);
}
