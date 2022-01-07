
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct upid {int nr; TYPE_1__* ns; } ;
struct pidmap {int nr_free; int page; } ;
struct TYPE_2__ {struct pidmap* pidmap; } ;


 int BITS_PER_PAGE ;
 int BITS_PER_PAGE_MASK ;
 int atomic_inc (int *) ;
 int clear_bit (int,int ) ;

__attribute__((used)) static void free_pidmap(struct upid *upid)
{
 int nr = upid->nr;
 struct pidmap *map = upid->ns->pidmap + nr / BITS_PER_PAGE;
 int offset = nr & BITS_PER_PAGE_MASK;

 clear_bit(offset, map->page);
 atomic_inc(&map->nr_free);
}
