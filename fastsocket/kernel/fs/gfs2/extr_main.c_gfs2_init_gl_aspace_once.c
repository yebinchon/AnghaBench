
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_glock {int dummy; } ;
struct address_space {int i_mmap_nonlinear; int i_mmap; int private_lock; int private_list; int i_mmap_lock; int tree_lock; int page_tree; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int INIT_RAW_PRIO_TREE_ROOT (int *) ;
 int gfs2_init_glock_once (struct gfs2_glock*) ;
 int memset (struct address_space*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void gfs2_init_gl_aspace_once(void *foo)
{
 struct gfs2_glock *gl = foo;
 struct address_space *mapping = (struct address_space *)(gl + 1);

 gfs2_init_glock_once(gl);
 memset(mapping, 0, sizeof(*mapping));
 INIT_RADIX_TREE(&mapping->page_tree, GFP_ATOMIC);
 spin_lock_init(&mapping->tree_lock);
 spin_lock_init(&mapping->i_mmap_lock);
 INIT_LIST_HEAD(&mapping->private_list);
 spin_lock_init(&mapping->private_lock);
 INIT_RAW_PRIO_TREE_ROOT(&mapping->i_mmap);
 INIT_LIST_HEAD(&mapping->i_mmap_nonlinear);
}
