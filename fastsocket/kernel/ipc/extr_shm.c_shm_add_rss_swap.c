
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct shmid_kernel {TYPE_3__* shm_file; } ;
struct shmem_inode_info {int lock; scalar_t__ swapped; } ;
struct inode {struct address_space* i_mapping; } ;
struct hstate {int dummy; } ;
struct address_space {unsigned long nrpages; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 struct shmem_inode_info* SHMEM_I (struct inode*) ;
 struct hstate* hstate_file (TYPE_3__*) ;
 scalar_t__ is_file_hugepages (TYPE_3__*) ;
 unsigned long pages_per_huge_page (struct hstate*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void shm_add_rss_swap(struct shmid_kernel *shp,
 unsigned long *rss_add, unsigned long *swp_add)
{
 struct inode *inode;

 inode = shp->shm_file->f_path.dentry->d_inode;

 if (is_file_hugepages(shp->shm_file)) {
  struct address_space *mapping = inode->i_mapping;
  struct hstate *h = hstate_file(shp->shm_file);
  *rss_add += pages_per_huge_page(h) * mapping->nrpages;
 } else {







  *rss_add += inode->i_mapping->nrpages;

 }
}
