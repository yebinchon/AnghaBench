
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uts_namespace {int name; int proc_inum; } ;


 int ENOMEM ;
 struct uts_namespace* ERR_PTR (int) ;
 struct uts_namespace* create_uts_ns () ;
 int down_read (int *) ;
 int kfree (struct uts_namespace*) ;
 int memcpy (int *,int *,int) ;
 int proc_alloc_inum (int *) ;
 int up_read (int *) ;
 int uts_sem ;

__attribute__((used)) static struct uts_namespace *clone_uts_ns(struct uts_namespace *old_ns)
{
 struct uts_namespace *ns;
 int err;

 ns = create_uts_ns();
 if (!ns)
  return ERR_PTR(-ENOMEM);

 err = proc_alloc_inum(&ns->proc_inum);
 if (err) {
  kfree(ns);
  return ERR_PTR(err);
 }

 down_read(&uts_sem);
 memcpy(&ns->name, &old_ns->name, sizeof(ns->name));
 up_read(&uts_sem);
 return ns;
}
