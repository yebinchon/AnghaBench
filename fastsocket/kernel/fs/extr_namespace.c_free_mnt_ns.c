
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mnt_namespace {int proc_inum; } ;


 int kfree (struct mnt_namespace*) ;
 int proc_free_inum (int ) ;

__attribute__((used)) static void free_mnt_ns(struct mnt_namespace *ns)
{
 proc_free_inum(ns->proc_inum);
 kfree(ns);
}
