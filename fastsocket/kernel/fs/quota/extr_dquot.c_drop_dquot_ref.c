
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ dq_op; } ;
struct TYPE_2__ {int dqptr_sem; } ;


 int LIST_HEAD (int ) ;
 int down_write (int *) ;
 int put_dquot_list (int *) ;
 int remove_dquot_ref (struct super_block*,int,int *) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;
 int tofree_head ;
 int up_write (int *) ;

__attribute__((used)) static void drop_dquot_ref(struct super_block *sb, int type)
{
 LIST_HEAD(tofree_head);

 if (sb->dq_op) {
  down_write(&sb_dqopt(sb)->dqptr_sem);
  remove_dquot_ref(sb, type, &tofree_head);
  up_write(&sb_dqopt(sb)->dqptr_sem);
  put_dquot_list(&tofree_head);
 }
}
