
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int in_use; int allocation; } ;
typedef TYPE_1__ page_group ;


 int page_group_index (int ,char*) ;

__attribute__((used)) static inline void
set_page_group_in_use (page_group *group, char *page)
{
  group->in_use |= 1 << page_group_index (group->allocation, page);
}
