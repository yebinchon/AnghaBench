
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static void errcatch_print_vi(struct virtual_item *vi)
{
 reiserfs_warning(((void*)0), "green-16011",
    "Invalid item type observed, run fsck ASAP");
}
