
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_field {struct itbl_field* next; } ;
struct itbl_entry {struct itbl_field* fields; } ;


 struct itbl_field* alloc_field (int ,int,int,unsigned long) ;
 int get_type (int) ;

struct itbl_field *
itbl_add_operand (struct itbl_entry *e, int yytype, int sbit,
    int ebit, unsigned long flags)
{
  struct itbl_field *f, **last_f;
  if (!e)
    return 0;

  f = alloc_field (get_type (yytype), sbit, ebit, flags);
  if (f)
    {
      last_f = &e->fields;
      while (*last_f)
 last_f = &(*last_f)->next;
      *last_f = f;
      f->next = 0;
    }
  return f;
}
