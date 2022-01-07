
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rds_iovec {int addr; int bytes; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ UINT_MAX ;

__attribute__((used)) static unsigned int rds_pages_in_vec(struct rds_iovec *vec)
{
 if ((vec->addr + vec->bytes <= vec->addr) ||
     (vec->bytes > (u64)UINT_MAX))
  return 0;

 return ((vec->addr + vec->bytes + PAGE_SIZE - 1) >> PAGE_SHIFT) -
  (vec->addr >> PAGE_SHIFT);
}
