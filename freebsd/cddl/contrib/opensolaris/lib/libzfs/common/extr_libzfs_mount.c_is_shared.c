
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_share_type_t ;
typedef size_t zfs_share_proto_t ;
struct TYPE_4__ {int * libzfs_sharetab; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int buf ;
struct TYPE_5__ {char const* p_name; } ;


 int MAXPATHLEN ;


 int SEEK_SET ;
 int SHARED_NFS ;
 int SHARED_NOT_SHARED ;
 int SHARED_SMB ;
 int * fgets (char*,int,int *) ;
 int fseek (int *,int ,int ) ;
 TYPE_2__* proto_table ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static zfs_share_type_t
is_shared(libzfs_handle_t *hdl, const char *mountpoint, zfs_share_proto_t proto)
{
 char buf[MAXPATHLEN], *tab;
 char *ptr;

 if (hdl->libzfs_sharetab == ((void*)0))
  return (SHARED_NOT_SHARED);

 (void) fseek(hdl->libzfs_sharetab, 0, SEEK_SET);

 while (fgets(buf, sizeof (buf), hdl->libzfs_sharetab) != ((void*)0)) {


  if ((tab = strchr(buf, '\t')) == ((void*)0))
   continue;

  *tab = '\0';
  if (strcmp(buf, mountpoint) == 0) {
   if (proto == 129)
    return (SHARED_NFS);

  }
 }

 return (SHARED_NOT_SHARED);
}
