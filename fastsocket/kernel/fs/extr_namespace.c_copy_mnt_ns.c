
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {int dummy; } ;
struct fs_struct {int dummy; } ;


 int BUG_ON (int) ;
 unsigned long CLONE_NEWNS ;
 struct mnt_namespace* dup_mnt_ns (struct mnt_namespace*,struct fs_struct*) ;
 int get_mnt_ns (struct mnt_namespace*) ;
 int put_mnt_ns (struct mnt_namespace*) ;

struct mnt_namespace *copy_mnt_ns(unsigned long flags, struct mnt_namespace *ns,
  struct fs_struct *new_fs)
{
 struct mnt_namespace *new_ns;

 BUG_ON(!ns);
 get_mnt_ns(ns);

 if (!(flags & CLONE_NEWNS))
  return ns;

 new_ns = dup_mnt_ns(ns, new_fs);

 put_mnt_ns(ns);
 return new_ns;
}
