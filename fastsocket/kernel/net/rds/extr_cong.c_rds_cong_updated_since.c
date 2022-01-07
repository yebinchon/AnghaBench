
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_read (int *) ;
 scalar_t__ likely (int) ;
 int rds_cong_generation ;

int rds_cong_updated_since(unsigned long *recent)
{
 unsigned long gen = atomic_read(&rds_cong_generation);

 if (likely(*recent == gen))
  return 0;
 *recent = gen;
 return 1;
}
