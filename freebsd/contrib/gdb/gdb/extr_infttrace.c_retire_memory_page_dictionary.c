
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ page_count; } ;
typedef scalar_t__ LONGEST ;


 TYPE_1__ memory_page_dictionary ;

__attribute__((used)) static void
retire_memory_page_dictionary (void)
{
  memory_page_dictionary.page_count = (LONGEST) - 1;
}
