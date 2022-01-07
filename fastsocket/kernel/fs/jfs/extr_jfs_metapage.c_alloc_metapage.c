
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int dummy; } ;
typedef int gfp_t ;


 struct metapage* mempool_alloc (int ,int ) ;
 int metapage_mempool ;

__attribute__((used)) static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
{
 return mempool_alloc(metapage_mempool, gfp_mask);
}
