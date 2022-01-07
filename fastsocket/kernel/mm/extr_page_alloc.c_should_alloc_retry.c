
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 unsigned int PAGE_ALLOC_COSTLY_ORDER ;
 int __GFP_NOFAIL ;
 int __GFP_NORETRY ;
 int __GFP_REPEAT ;

__attribute__((used)) static inline int
should_alloc_retry(gfp_t gfp_mask, unsigned int order,
    unsigned long pages_reclaimed)
{

 if (gfp_mask & __GFP_NORETRY)
  return 0;






 if (order <= PAGE_ALLOC_COSTLY_ORDER)
  return 1;
 if (gfp_mask & __GFP_REPEAT && pages_reclaimed < (1 << order))
  return 1;





 if (gfp_mask & __GFP_NOFAIL)
  return 1;

 return 0;
}
