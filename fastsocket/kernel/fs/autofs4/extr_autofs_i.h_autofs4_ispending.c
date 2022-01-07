
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct autofs_info {int flags; } ;


 int AUTOFS_INF_EXPIRING ;
 int AUTOFS_INF_PENDING ;
 struct autofs_info* autofs4_dentry_ino (struct dentry*) ;

__attribute__((used)) static inline int autofs4_ispending(struct dentry *dentry)
{
 struct autofs_info *inf = autofs4_dentry_ino(dentry);

 if (inf->flags & AUTOFS_INF_PENDING)
  return 1;

 if (inf->flags & AUTOFS_INF_EXPIRING)
  return 1;

 return 0;
}
