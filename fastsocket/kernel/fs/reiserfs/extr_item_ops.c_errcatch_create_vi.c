
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_node {int dummy; } ;
struct virtual_item {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static int errcatch_create_vi(struct virtual_node *vn,
         struct virtual_item *vi,
         int is_affected, int insert_size)
{
 reiserfs_warning(((void*)0), "green-16006",
    "Invalid item type observed, run fsck ASAP");
 return 0;

}
