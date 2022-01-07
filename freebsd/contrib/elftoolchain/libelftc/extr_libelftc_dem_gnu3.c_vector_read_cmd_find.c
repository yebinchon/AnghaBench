
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {struct read_cmd_item* r_container; scalar_t__ size; } ;
struct read_cmd_item {int cmd; } ;
typedef enum read_cmd { ____Placeholder_read_cmd } read_cmd ;


 int READ_FAIL ;

__attribute__((used)) static struct read_cmd_item *
vector_read_cmd_find(struct vector_read_cmd *v, enum read_cmd dst)
{
 int i;

 if (v == ((void*)0) || dst == READ_FAIL)
  return (((void*)0));

 for (i = (int) v->size - 1; i >= 0; i--)
  if (v->r_container[i].cmd == dst)
   return (&v->r_container[i]);

 return (((void*)0));
}
