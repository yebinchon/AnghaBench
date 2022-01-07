
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_info {int dummy; } ;


 int internal_delete_pointers_items (struct buffer_info*,int,int,int) ;

__attribute__((used)) static void internal_delete_childs(struct buffer_info *cur_bi, int from, int n)
{
 int i_from;

 i_from = (from == 0) ? from : from - 1;




 internal_delete_pointers_items(cur_bi, from, i_from, n);
}
