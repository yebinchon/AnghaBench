
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_field {int type; int range; struct itbl_field* next; } ;
struct itbl_entry {char* name; int processor; struct itbl_field* fields; } ;
typedef int e_processor ;


 int ITBL_DECODE_PNUM (unsigned long) ;
 int ITBL_IS_INSN (unsigned long) ;





 int e_insn ;
 unsigned long extract_range (unsigned long,int ) ;
 struct itbl_entry* find_entry_byval (int ,int,unsigned long,int *) ;
 int get_processor (int ) ;
 int sprintf (char*,char*,char*,unsigned long) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

int
itbl_disassemble (char *s, unsigned long insn)
{
  e_processor processor;
  struct itbl_entry *e;
  struct itbl_field *f;

  if (!ITBL_IS_INSN (insn))
    return 0;
  processor = get_processor (ITBL_DECODE_PNUM (insn));


  e = find_entry_byval (processor, e_insn, insn, 0);
  if (!e)
    return 0;
  strcpy (s, e->name);


  for (f = e->fields; f; f = f->next)
    {
      struct itbl_entry *r;
      unsigned long value;

      if (f == e->fields)
 strcat (s, "\t");
      else
 strcat (s, ",");
      value = extract_range (insn, f->range);

      switch (f->type)
 {
 case 130:
 case 131:
 case 129:


   r = find_entry_byval (e->processor, f->type, value, &f->range);
   if (r)
     strcat (s, r->name);
   else
     sprintf (s, "%s$%lu", s, value);
   break;
 case 132:



 case 128:
   sprintf (s, "%s0x%lx", s, value);
   break;
 default:
   return 0;
 }
    }
  return 1;
}
