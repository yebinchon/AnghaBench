
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_6__* cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {int cl_list; } ;
typedef TYPE_2__ prop_changelist_t ;
typedef int newname ;
struct TYPE_10__ {char* zfs_name; } ;


 int ZFS_MAX_DATASET_NAME_LEN ;
 int isa_child_of (char*,char const*) ;
 int remove_mountpoint (TYPE_6__*) ;
 int strcat (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 TYPE_1__* uu_list_first (int ) ;
 TYPE_1__* uu_list_next (int ,TYPE_1__*) ;

void
changelist_rename(prop_changelist_t *clp, const char *src, const char *dst)
{
 prop_changenode_t *cn;
 char newname[ZFS_MAX_DATASET_NAME_LEN];

 for (cn = uu_list_first(clp->cl_list); cn != ((void*)0);
     cn = uu_list_next(clp->cl_list, cn)) {



  if (!isa_child_of(cn->cn_handle->zfs_name, src))
   continue;




  remove_mountpoint(cn->cn_handle);

  (void) strlcpy(newname, dst, sizeof (newname));
  (void) strcat(newname, cn->cn_handle->zfs_name + strlen(src));

  (void) strlcpy(cn->cn_handle->zfs_name, newname,
      sizeof (cn->cn_handle->zfs_name));
 }
}
