
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct reference {int dummy; } ;
struct TYPE_2__ {int capacity; int init_point; int index_mask; int start_mask; scalar_t__ last_free; scalar_t__ first_free; struct reference* entries; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 int __GFP_HIGHMEM ;
 int __GFP_ZERO ;
 struct reference* __vmalloc (int,int,int ) ;
 TYPE_1__ tipc_ref_table ;

int tipc_ref_table_init(u32 requested_size, u32 start)
{
 struct reference *table;
 u32 actual_size;



 requested_size++;
 for (actual_size = 16; actual_size < requested_size; actual_size <<= 1)
                   ;



 table = __vmalloc(actual_size * sizeof(struct reference),
     GFP_KERNEL | __GFP_HIGHMEM | __GFP_ZERO, PAGE_KERNEL);
 if (table == ((void*)0))
  return -ENOMEM;

 tipc_ref_table.entries = table;
 tipc_ref_table.capacity = requested_size;
 tipc_ref_table.init_point = 1;
 tipc_ref_table.first_free = 0;
 tipc_ref_table.last_free = 0;
 tipc_ref_table.index_mask = actual_size - 1;
 tipc_ref_table.start_mask = start & ~tipc_ref_table.index_mask;

 return 0;
}
