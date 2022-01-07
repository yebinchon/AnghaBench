
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static int errcatch_check_left(struct virtual_item *vi, int free,
          int start_skip, int end_skip)
{
 reiserfs_warning(((void*)0), "green-16007",
    "Invalid item type observed, run fsck ASAP");
 return -1;
}
