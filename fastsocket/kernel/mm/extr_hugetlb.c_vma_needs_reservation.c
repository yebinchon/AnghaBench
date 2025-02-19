
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; TYPE_2__* vm_file; } ;
struct resv_map {int regions; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct hstate {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_4__ {struct address_space* f_mapping; } ;
struct TYPE_3__ {int private_list; } ;


 int HPAGE_RESV_OWNER ;
 int VM_MAYSHARE ;
 int is_vma_resv_set (struct vm_area_struct*,int ) ;
 long region_chg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ vma_hugecache_offset (struct hstate*,struct vm_area_struct*,unsigned long) ;
 struct resv_map* vma_resv_map (struct vm_area_struct*) ;

__attribute__((used)) static long vma_needs_reservation(struct hstate *h,
   struct vm_area_struct *vma, unsigned long addr)
{
 struct address_space *mapping = vma->vm_file->f_mapping;
 struct inode *inode = mapping->host;

 if (vma->vm_flags & VM_MAYSHARE) {
  pgoff_t idx = vma_hugecache_offset(h, vma, addr);
  return region_chg(&inode->i_mapping->private_list,
       idx, idx + 1);

 } else if (!is_vma_resv_set(vma, HPAGE_RESV_OWNER)) {
  return 1;

 } else {
  long err;
  pgoff_t idx = vma_hugecache_offset(h, vma, addr);
  struct resv_map *reservations = vma_resv_map(vma);

  err = region_chg(&reservations->regions, idx, idx + 1);
  if (err < 0)
   return err;
  return 0;
 }
}
