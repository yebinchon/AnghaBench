
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configfs_dirent {int s_type; int s_children; int s_sibling; void* s_element; int s_links; int s_count; } ;


 int CONFIGFS_USET_DROPPING ;
 int ENOENT ;
 int ENOMEM ;
 struct configfs_dirent* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int configfs_dir_cachep ;
 int configfs_dirent_lock ;
 int configfs_init_dirent_depth (struct configfs_dirent*) ;
 int kmem_cache_free (int ,struct configfs_dirent*) ;
 struct configfs_dirent* kmem_cache_zalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct configfs_dirent *configfs_new_dirent(struct configfs_dirent *parent_sd,
         void *element, int type)
{
 struct configfs_dirent * sd;

 sd = kmem_cache_zalloc(configfs_dir_cachep, GFP_KERNEL);
 if (!sd)
  return ERR_PTR(-ENOMEM);

 atomic_set(&sd->s_count, 1);
 INIT_LIST_HEAD(&sd->s_links);
 INIT_LIST_HEAD(&sd->s_children);
 sd->s_element = element;
 sd->s_type = type;
 configfs_init_dirent_depth(sd);
 spin_lock(&configfs_dirent_lock);
 if (parent_sd->s_type & CONFIGFS_USET_DROPPING) {
  spin_unlock(&configfs_dirent_lock);
  kmem_cache_free(configfs_dir_cachep, sd);
  return ERR_PTR(-ENOENT);
 }
 list_add(&sd->s_sibling, &parent_sd->s_children);
 spin_unlock(&configfs_dirent_lock);

 return sd;
}
