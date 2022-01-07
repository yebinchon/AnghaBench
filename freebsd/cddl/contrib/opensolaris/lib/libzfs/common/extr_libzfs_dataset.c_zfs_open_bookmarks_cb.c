
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct zfs_open_bookmarks_cb_data {int * zhp; int path; } ;


 int EEXIST ;
 scalar_t__ strcmp (int ,int ) ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;

__attribute__((used)) static int
zfs_open_bookmarks_cb(zfs_handle_t *zhp, void *data)
{
 struct zfs_open_bookmarks_cb_data *dp = data;




 if (strcmp(dp->path, zfs_get_name(zhp)) == 0) {



  dp->zhp = zhp;
  return (EEXIST);
 }




 zfs_close(zhp);
 return (0);
}
