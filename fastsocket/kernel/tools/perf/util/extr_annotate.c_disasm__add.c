
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct disasm_line {int node; } ;


 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void disasm__add(struct list_head *head, struct disasm_line *line)
{
 list_add_tail(&line->node, head);
}
