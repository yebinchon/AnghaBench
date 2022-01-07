
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ subsegT ;
struct line_subseg {scalar_t__ subseg; int * head; int ** ptail; struct line_subseg* next; } ;
struct line_seg {scalar_t__ seg; struct line_subseg* head; struct line_seg* next; } ;
typedef scalar_t__ segT ;


 struct line_seg* all_segs ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static struct line_subseg *
get_line_subseg (segT seg, subsegT subseg)
{
  static segT last_seg;
  static subsegT last_subseg;
  static struct line_subseg *last_line_subseg;

  struct line_seg **ps, *s;
  struct line_subseg **pss, *ss;

  if (seg == last_seg && subseg == last_subseg)
    return last_line_subseg;

  for (ps = &all_segs; (s = *ps) != ((void*)0); ps = &s->next)
    if (s->seg == seg)
      goto found_seg;

  s = (struct line_seg *) xmalloc (sizeof (*s));
  s->next = ((void*)0);
  s->seg = seg;
  s->head = ((void*)0);
  *ps = s;

 found_seg:
  for (pss = &s->head; (ss = *pss) != ((void*)0) ; pss = &ss->next)
    {
      if (ss->subseg == subseg)
 goto found_subseg;
      if (ss->subseg > subseg)
 break;
    }

  ss = (struct line_subseg *) xmalloc (sizeof (*ss));
  ss->next = *pss;
  ss->subseg = subseg;
  ss->head = ((void*)0);
  ss->ptail = &ss->head;
  *pss = ss;

 found_subseg:
  last_seg = seg;
  last_subseg = subseg;
  last_line_subseg = ss;

  return ss;
}
