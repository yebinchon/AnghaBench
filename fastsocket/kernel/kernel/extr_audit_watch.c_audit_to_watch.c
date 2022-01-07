
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct audit_watch {int dummy; } ;
struct audit_krule {scalar_t__ listnr; struct audit_watch* watch; scalar_t__ tree; scalar_t__ inode_f; } ;


 scalar_t__ AUDIT_FILTER_EXIT ;
 scalar_t__ Audit_equal ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct audit_watch*) ;
 int PTR_ERR (struct audit_watch*) ;
 int audit_get_watch (struct audit_watch*) ;
 int audit_ih ;
 struct audit_watch* audit_init_watch (char*) ;

int audit_to_watch(struct audit_krule *krule, char *path, int len, u32 op)
{
 struct audit_watch *watch;

 if (!audit_ih)
  return -EOPNOTSUPP;

 if (path[0] != '/' || path[len-1] == '/' ||
     krule->listnr != AUDIT_FILTER_EXIT ||
     op != Audit_equal ||
     krule->inode_f || krule->watch || krule->tree)
  return -EINVAL;

 watch = audit_init_watch(path);
 if (IS_ERR(watch))
  return PTR_ERR(watch);

 audit_get_watch(watch);
 krule->watch = watch;

 return 0;
}
