
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
struct line_subseg {struct line_entry** ptail; } ;
struct dwarf2_line_info {int dummy; } ;
struct line_entry {struct line_entry* next; struct dwarf2_line_info loc; int * label; } ;


 struct line_subseg* get_line_subseg (int ,int ) ;
 int now_seg ;
 int now_subseg ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
dwarf2_gen_line_info_1 (symbolS *label, struct dwarf2_line_info *loc)
{
  struct line_subseg *ss;
  struct line_entry *e;

  e = (struct line_entry *) xmalloc (sizeof (*e));
  e->next = ((void*)0);
  e->label = label;
  e->loc = *loc;

  ss = get_line_subseg (now_seg, now_subseg);
  *ss->ptail = e;
  ss->ptail = &e->next;
}
