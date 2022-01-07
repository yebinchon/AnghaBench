
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_field {int type; int range; struct itbl_field* next; } ;
struct itbl_entry {int processor; unsigned long value; struct itbl_field* fields; } ;


 unsigned long apply_range (unsigned long,int ) ;
 unsigned long build_opcode (struct itbl_entry*) ;





 int e_insn ;
 int e_nprocs ;
 struct itbl_entry* find_entry_byname (int,int,char*) ;
 char* itbl_get_field (char**) ;
 unsigned long strtol (char*,int ,int) ;

unsigned long
itbl_assemble (char *name, char *s)
{
  unsigned long opcode;
  struct itbl_entry *e = ((void*)0);
  struct itbl_field *f;
  char *n;
  int processor;

  if (!name || !*name)
    return 0;


  for (processor = 0; processor < e_nprocs; processor++)
    {
      e = find_entry_byname (processor, e_insn, name);
      if (e)
 break;
    }
  if (!e)
    return 0;
  opcode = build_opcode (e);


  for (f = e->fields; f; f = f->next)
    {
      struct itbl_entry *r;
      unsigned long value;
      if (!s || !*s)
 return 0;
      n = itbl_get_field (&s);

      switch (f->type)
 {
 case 130:
 case 131:
 case 129:


   if (*n == '$')
     {
       n++;
       value = strtol (n, 0, 10);

       if (value == 0 && *n != '0')
  return 0;
     }
   else
     {
       r = find_entry_byname (e->processor, f->type, n);
       if (r)
  value = r->value;
       else
  return 0;
     }
   break;
 case 132:
 case 128:
   if (*n == '0' && *(n + 1) == 'x')
     {
       n += 2;
       value = strtol (n, 0, 16);

     }
   else
     {
       value = strtol (n, 0, 10);

       if (value == 0 && *n != '0')
  return 0;
     }
   break;
 default:
   return 0;
 }
      opcode |= apply_range (value, f->range);
    }
  if (s && *s)
    return 0;
  return opcode;
}
