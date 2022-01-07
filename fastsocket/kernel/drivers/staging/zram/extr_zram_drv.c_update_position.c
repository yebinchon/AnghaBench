
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bio_vec {int bv_len; } ;


 int PAGE_SIZE ;

__attribute__((used)) static void update_position(u32 *index, int *offset, struct bio_vec *bvec)
{
 if (*offset + bvec->bv_len >= PAGE_SIZE)
  (*index)++;
 *offset = (*offset + bvec->bv_len) % PAGE_SIZE;
}
