
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_iovec {int dummy; } ;
struct bio_vec {int dummy; } ;
struct bio_map_data {struct bio_map_data* iovecs; void* sgvecs; } ;
typedef int gfp_t ;


 int kfree (struct bio_map_data*) ;
 void* kmalloc (int,int ) ;

__attribute__((used)) static struct bio_map_data *bio_alloc_map_data(int nr_segs, int iov_count,
            gfp_t gfp_mask)
{
 struct bio_map_data *bmd = kmalloc(sizeof(*bmd), gfp_mask);

 if (!bmd)
  return ((void*)0);

 bmd->iovecs = kmalloc(sizeof(struct bio_vec) * nr_segs, gfp_mask);
 if (!bmd->iovecs) {
  kfree(bmd);
  return ((void*)0);
 }

 bmd->sgvecs = kmalloc(sizeof(struct sg_iovec) * iov_count, gfp_mask);
 if (bmd->sgvecs)
  return bmd;

 kfree(bmd->iovecs);
 kfree(bmd);
 return ((void*)0);
}
