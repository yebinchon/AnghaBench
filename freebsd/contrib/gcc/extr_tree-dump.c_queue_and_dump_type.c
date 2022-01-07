
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int dump_info_p ;


 int DUMP_NONE ;
 int TREE_TYPE (int ) ;
 int queue_and_dump_index (int ,char*,int ,int ) ;

void
queue_and_dump_type (dump_info_p di, tree t)
{
  queue_and_dump_index (di, "type", TREE_TYPE (t), DUMP_NONE);
}
