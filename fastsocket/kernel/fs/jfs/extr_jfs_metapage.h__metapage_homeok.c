
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapage {int page; int nohomeok; } ;


 int page_cache_release (int ) ;

__attribute__((used)) static inline void _metapage_homeok(struct metapage *mp)
{
 if (!--mp->nohomeok)
  page_cache_release(mp->page);
}
