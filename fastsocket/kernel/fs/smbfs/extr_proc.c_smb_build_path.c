
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_sb_info {int remote_nls; int local_nls; TYPE_3__* ops; TYPE_1__* mnt; } ;
struct qstr {int len; int name; } ;
struct TYPE_5__ {int len; int name; } ;
struct dentry {int d_lock; struct dentry* d_parent; TYPE_2__ d_name; } ;
struct TYPE_6__ {int (* convert ) (unsigned char*,int,int ,int ,int ,int ) ;} ;
struct TYPE_4__ {int flags; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ROOT (struct dentry*) ;
 int SMB_MAXPATHLEN ;
 int SMB_MOUNT_UNICODE ;
 int dget (struct dentry*) ;
 int dput (struct dentry*) ;
 int reverse_string (unsigned char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned char*,int,int ,int ,int ,int ) ;
 int stub2 (unsigned char*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int smb_build_path(struct smb_sb_info *server, unsigned char *buf,
     int maxlen,
     struct dentry *entry, struct qstr *name)
{
 unsigned char *path = buf;
 int len;
 int unicode = (server->mnt->flags & SMB_MOUNT_UNICODE) != 0;

 if (maxlen < (2<<unicode))
  return -ENAMETOOLONG;

 if (maxlen > SMB_MAXPATHLEN + 1)
  maxlen = SMB_MAXPATHLEN + 1;

 if (entry == ((void*)0))
  goto test_name_and_out;




 if (IS_ROOT(entry) && !name) {
  *path++ = '\\';
  if (unicode) *path++ = '\0';
  *path++ = '\0';
  if (unicode) *path++ = '\0';
  return path-buf;
 }





 dget(entry);
 spin_lock(&entry->d_lock);
 while (!IS_ROOT(entry)) {
  struct dentry *parent;

  if (maxlen < (3<<unicode)) {
   spin_unlock(&entry->d_lock);
   dput(entry);
   return -ENAMETOOLONG;
  }

  len = server->ops->convert(path, maxlen-2,
          entry->d_name.name, entry->d_name.len,
          server->local_nls, server->remote_nls);
  if (len < 0) {
   spin_unlock(&entry->d_lock);
   dput(entry);
   return len;
  }
  reverse_string(path, len);
  path += len;
  if (unicode) {

   *path++ = '\0';
   maxlen--;
  }
  *path++ = '\\';
  maxlen -= len+1;

  parent = entry->d_parent;
  dget(parent);
  spin_unlock(&entry->d_lock);
  dput(entry);
  entry = parent;
  spin_lock(&entry->d_lock);
 }
 spin_unlock(&entry->d_lock);
 dput(entry);
 reverse_string(buf, path-buf);


test_name_and_out:
 if (name) {
  if (maxlen < (3<<unicode))
   return -ENAMETOOLONG;
  *path++ = '\\';
  if (unicode) {
   *path++ = '\0';
   maxlen--;
  }
  len = server->ops->convert(path, maxlen-2,
          name->name, name->len,
          server->local_nls, server->remote_nls);
  if (len < 0)
   return len;
  path += len;
  maxlen -= len+1;
 }

 *path++ = '\0';
 if (unicode) *path++ = '\0';
 return path-buf;
}
