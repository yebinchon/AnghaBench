
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; char const* name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;
typedef int ssize_t ;


 int ENAMETOOLONG ;
 char* ERR_PTR (int ) ;
 int IS_ROOT (struct dentry const*) ;
 int dcache_lock ;
 int memcpy (char*,char const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char const*) ;

char *nfs_path(const char *base,
        const struct dentry *droot,
        const struct dentry *dentry,
        char *buffer, ssize_t buflen)
{
 char *end = buffer+buflen;
 int namelen;

 *--end = '\0';
 buflen--;
 spin_lock(&dcache_lock);
 while (!IS_ROOT(dentry) && dentry != droot) {
  namelen = dentry->d_name.len;
  buflen -= namelen + 1;
  if (buflen < 0)
   goto Elong_unlock;
  end -= namelen;
  memcpy(end, dentry->d_name.name, namelen);
  *--end = '/';
  dentry = dentry->d_parent;
 }
 spin_unlock(&dcache_lock);
 if (*end != '/') {
  if (--buflen < 0)
   goto Elong;
  *--end = '/';
 }
 namelen = strlen(base);

 while (namelen > 0 && base[namelen - 1] == '/')
  namelen--;
 buflen -= namelen;
 if (buflen < 0)
  goto Elong;
 end -= namelen;
 memcpy(end, base, namelen);
 return end;
Elong_unlock:
 spin_unlock(&dcache_lock);
Elong:
 return ERR_PTR(-ENAMETOOLONG);
}
