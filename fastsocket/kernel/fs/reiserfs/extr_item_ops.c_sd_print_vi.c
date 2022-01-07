
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtual_item {int vi_ih; int vi_type; int vi_index; } ;


 int reiserfs_warning (int *,char*,char*,int ,int ,int ) ;

__attribute__((used)) static void sd_print_vi(struct virtual_item *vi)
{
 reiserfs_warning(((void*)0), "reiserfs-16100",
    "STATDATA, index %d, type 0x%x, %h",
    vi->vi_index, vi->vi_type, vi->vi_ih);
}
