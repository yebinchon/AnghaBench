
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {scalar_t__ ext; } ;
struct TYPE_4__ {int filename; } ;


 int GFP_KERNEL ;
 char debugfs_create_symlink (int ,struct dentry*,char*) ;
 int debugfs_remove (char) ;
 int deskew (char*) ;
 TYPE_2__* gcov_link ;
 char* get_link_target (int ,TYPE_2__*) ;
 TYPE_1__* get_node_info (struct gcov_node*) ;
 char* kcalloc (int,int,int ) ;
 int kfree (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void add_links(struct gcov_node *node, struct dentry *parent)
{
 char *basename;
 char *target;
 int num;
 int i;

 for (num = 0; gcov_link[num].ext; num++)
                ;
 node->links = kcalloc(num, sizeof(struct dentry *), GFP_KERNEL);
 if (!node->links)
  return;
 for (i = 0; i < num; i++) {
  target = get_link_target(get_node_info(node)->filename,
      &gcov_link[i]);
  if (!target)
   goto out_err;
  basename = strrchr(target, '/');
  if (!basename)
   goto out_err;
  basename++;
  node->links[i] = debugfs_create_symlink(deskew(basename),
       parent, target);
  if (!node->links[i])
   goto out_err;
  kfree(target);
 }

 return;
out_err:
 kfree(target);
 while (i-- > 0)
  debugfs_remove(node->links[i]);
 kfree(node->links);
 node->links = ((void*)0);
}
