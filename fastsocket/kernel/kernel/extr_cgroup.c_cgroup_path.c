
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct cgroup {struct cgroup* parent; TYPE_3__* dentry; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_2__ d_name; } ;


 int ENAMETOOLONG ;
 struct cgroup const* dummytop ;
 int memcpy (char*,int ,int) ;
 int memmove (char*,char*,int) ;
 struct dentry* rcu_dereference (TYPE_3__*) ;
 int strcpy (char*,char*) ;

int cgroup_path(const struct cgroup *cgrp, char *buf, int buflen)
{
 char *start;
 struct dentry *dentry = rcu_dereference(cgrp->dentry);

 if (!dentry || cgrp == dummytop) {




  strcpy(buf, "/");
  return 0;
 }

 start = buf + buflen;

 *--start = '\0';
 for (;;) {
  int len = dentry->d_name.len;
  if ((start -= len) < buf)
   return -ENAMETOOLONG;
  memcpy(start, cgrp->dentry->d_name.name, len);
  cgrp = cgrp->parent;
  if (!cgrp)
   break;
  dentry = rcu_dereference(cgrp->dentry);
  if (!cgrp->parent)
   continue;
  if (--start < buf)
   return -ENAMETOOLONG;
  *start = '/';
 }
 memmove(buf, start, buf + buflen - start);
 return 0;
}
