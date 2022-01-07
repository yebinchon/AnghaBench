
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_adsp_module {int pmem_regions_lock; int pmem_regions; } ;
struct file {int dummy; } ;
struct adsp_pmem_region {unsigned long paddr; unsigned long kvaddr; unsigned long len; int list; struct file* file; int vaddr; } ;
struct adsp_pmem_info {int vaddr; int fd; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int adsp_pmem_check (struct msm_adsp_module*,int ,unsigned long) ;
 scalar_t__ get_pmem_file (int ,unsigned long*,unsigned long*,unsigned long*,struct file**) ;
 int hlist_add_head (int *,int *) ;
 int kfree (struct adsp_pmem_region*) ;
 struct adsp_pmem_region* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_pmem_file (struct file*) ;

__attribute__((used)) static int adsp_pmem_add(struct msm_adsp_module *module,
    struct adsp_pmem_info *info)
{
 unsigned long paddr, kvaddr, len;
 struct file *file;
 struct adsp_pmem_region *region;
 int rc = -EINVAL;

 mutex_lock(&module->pmem_regions_lock);
 region = kmalloc(sizeof(*region), GFP_KERNEL);
 if (!region) {
  rc = -ENOMEM;
  goto end;
 }
 INIT_HLIST_NODE(&region->list);
 if (get_pmem_file(info->fd, &paddr, &kvaddr, &len, &file)) {
  kfree(region);
  goto end;
 }

 rc = adsp_pmem_check(module, info->vaddr, len);
 if (rc < 0) {
  put_pmem_file(file);
  kfree(region);
  goto end;
 }

 region->vaddr = info->vaddr;
 region->paddr = paddr;
 region->kvaddr = kvaddr;
 region->len = len;
 region->file = file;

 hlist_add_head(&region->list, &module->pmem_regions);
end:
 mutex_unlock(&module->pmem_regions_lock);
 return rc;
}
