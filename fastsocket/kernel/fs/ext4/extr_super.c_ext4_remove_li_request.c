
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int * s_li_request; } ;
struct ext4_li_request {int lr_request; struct ext4_sb_info* lr_sbi; } ;


 int kfree (struct ext4_li_request*) ;
 int list_del (int *) ;

__attribute__((used)) static void ext4_remove_li_request(struct ext4_li_request *elr)
{
 struct ext4_sb_info *sbi;

 if (!elr)
  return;

 sbi = elr->lr_sbi;

 list_del(&elr->lr_request);
 sbi->s_li_request = ((void*)0);
 kfree(elr);
}
