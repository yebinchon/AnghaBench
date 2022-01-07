
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_collect {int * bio; } ;


 int bio_put (int *) ;

__attribute__((used)) static void pcol_free(struct page_collect *pcol)
{
 bio_put(pcol->bio);
 pcol->bio = ((void*)0);
}
