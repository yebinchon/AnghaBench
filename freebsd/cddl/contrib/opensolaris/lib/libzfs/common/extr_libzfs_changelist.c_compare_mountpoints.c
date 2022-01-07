
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
typedef int mountb ;
typedef int mounta ;
typedef int boolean_t ;


 int B_FALSE ;
 int MAXPATHLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int strcmp (char*,char*) ;
 scalar_t__ zfs_prop_get (int ,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static int
compare_mountpoints(const void *a, const void *b, void *unused)
{
 const prop_changenode_t *ca = a;
 const prop_changenode_t *cb = b;

 char mounta[MAXPATHLEN];
 char mountb[MAXPATHLEN];

 boolean_t hasmounta, hasmountb;
 hasmounta = (zfs_prop_get(ca->cn_handle, ZFS_PROP_MOUNTPOINT, mounta,
     sizeof (mounta), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
 hasmountb = (zfs_prop_get(cb->cn_handle, ZFS_PROP_MOUNTPOINT, mountb,
     sizeof (mountb), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

 if (!hasmounta && hasmountb)
  return (-1);
 else if (hasmounta && !hasmountb)
  return (1);
 else if (!hasmounta && !hasmountb)
  return (0);
 else
  return (strcmp(mountb, mounta));
}
