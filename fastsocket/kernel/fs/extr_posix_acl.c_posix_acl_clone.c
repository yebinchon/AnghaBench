
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl_entry {int dummy; } ;
struct posix_acl {int a_count; int a_refcount; } ;
typedef int gfp_t ;


 int atomic_set (int *,int) ;
 struct posix_acl* kmemdup (struct posix_acl const*,int,int ) ;

struct posix_acl *
posix_acl_clone(const struct posix_acl *acl, gfp_t flags)
{
 struct posix_acl *clone = ((void*)0);

 if (acl) {
  int size = sizeof(struct posix_acl) + acl->a_count *
             sizeof(struct posix_acl_entry);
  clone = kmemdup(acl, size, flags);
  if (clone)
   atomic_set(&clone->a_refcount, 1);
 }
 return clone;
}
