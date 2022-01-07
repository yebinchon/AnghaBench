
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfc6_cache {int dummy; } ;


 int kmem_cache_free (int ,struct mfc6_cache*) ;
 int mfc6_net (struct mfc6_cache*) ;
 int mrt_cachep ;
 int release_net (int ) ;

__attribute__((used)) static inline void ip6mr_cache_free(struct mfc6_cache *c)
{
 release_net(mfc6_net(c));
 kmem_cache_free(mrt_cachep, c);
}
