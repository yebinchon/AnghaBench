
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LOOKUP_PARENT ;
 int kfree (struct nameidata*) ;
 struct nameidata* kmalloc (int,int ) ;
 int path_lookup (char*,int ,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int audit_get_nd(char *path, struct nameidata **ndp, struct nameidata **ndw)
{
 struct nameidata *ndparent, *ndwatch;
 int err;

 ndparent = kmalloc(sizeof(*ndparent), GFP_KERNEL);
 if (unlikely(!ndparent))
  return -ENOMEM;

 ndwatch = kmalloc(sizeof(*ndwatch), GFP_KERNEL);
 if (unlikely(!ndwatch)) {
  kfree(ndparent);
  return -ENOMEM;
 }

 err = path_lookup(path, LOOKUP_PARENT, ndparent);
 if (err) {
  kfree(ndparent);
  kfree(ndwatch);
  return err;
 }

 err = path_lookup(path, 0, ndwatch);
 if (err) {
  kfree(ndwatch);
  ndwatch = ((void*)0);
 }

 *ndp = ndparent;
 *ndw = ndwatch;

 return 0;
}
