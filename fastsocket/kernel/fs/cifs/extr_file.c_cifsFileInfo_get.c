
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsFileInfo {int dummy; } ;


 int cifsFileInfo_get_locked (struct cifsFileInfo*) ;
 int cifs_file_list_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct cifsFileInfo *
cifsFileInfo_get(struct cifsFileInfo *cifs_file)
{
 spin_lock(&cifs_file_list_lock);
 cifsFileInfo_get_locked(cifs_file);
 spin_unlock(&cifs_file_list_lock);
 return cifs_file;
}
