
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t lg_pagesize; } ;


 TYPE_1__ G ;

__attribute__((used)) static inline size_t
page_group_index (char *allocation, char *page)
{
  return (size_t) (page - allocation) >> G.lg_pagesize;
}
