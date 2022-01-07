
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgroupfs_root {int name; int release_agent_path; int flags; scalar_t__ subsys_bits; } ;
struct cgroup_sb_opts {int name; int release_agent; int flags; scalar_t__ subsys_bits; int none; } ;


 int ENOMEM ;
 struct cgroupfs_root* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int init_cgroup_root (struct cgroupfs_root*) ;
 int init_root_id (struct cgroupfs_root*) ;
 int kfree (struct cgroupfs_root*) ;
 struct cgroupfs_root* kzalloc (int,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static struct cgroupfs_root *cgroup_root_from_opts(struct cgroup_sb_opts *opts)
{
 struct cgroupfs_root *root;

 if (!opts->subsys_bits && !opts->none)
  return ((void*)0);

 root = kzalloc(sizeof(*root), GFP_KERNEL);
 if (!root)
  return ERR_PTR(-ENOMEM);

 if (!init_root_id(root)) {
  kfree(root);
  return ERR_PTR(-ENOMEM);
 }
 init_cgroup_root(root);

 root->subsys_bits = opts->subsys_bits;
 root->flags = opts->flags;
 if (opts->release_agent)
  strcpy(root->release_agent_path, opts->release_agent);
 if (opts->name)
  strcpy(root->name, opts->name);
 return root;
}
