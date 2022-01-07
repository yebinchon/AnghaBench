
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_pipe_desc {int * pages; } ;


 int page_cache_release (int ) ;

void spd_release_page(struct splice_pipe_desc *spd, unsigned int i)
{
 page_cache_release(spd->pages[i]);
}
