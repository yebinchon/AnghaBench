
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union afs_dirent {int dummy; } afs_dirent ;
typedef union afs_dir_block {int dummy; } afs_dir_block ;
typedef scalar_t__ u64 ;
struct TYPE_2__ {unsigned int unique; scalar_t__ vnode; } ;
struct afs_lookup_cookie {int nlen; int found; TYPE_1__ fid; int name; } ;
typedef int loff_t ;


 int BUILD_BUG_ON (int) ;
 int _enter (char*,int ,int,char const*,int,unsigned long long,unsigned int) ;
 int _leave (char*) ;
 scalar_t__ memcmp (int ,char const*,int) ;

__attribute__((used)) static int afs_lookup_filldir(void *_cookie, const char *name, int nlen,
         loff_t fpos, u64 ino, unsigned dtype)
{
 struct afs_lookup_cookie *cookie = _cookie;

 _enter("{%s,%Zu},%s,%u,,%llu,%u",
        cookie->name, cookie->nlen, name, nlen,
        (unsigned long long) ino, dtype);


 BUILD_BUG_ON(sizeof(union afs_dir_block) != 2048);
 BUILD_BUG_ON(sizeof(union afs_dirent) != 32);

 if (cookie->nlen != nlen || memcmp(cookie->name, name, nlen) != 0) {
  _leave(" = 0 [no]");
  return 0;
 }

 cookie->fid.vnode = ino;
 cookie->fid.unique = dtype;
 cookie->found = 1;

 _leave(" = -1 [found]");
 return -1;
}
