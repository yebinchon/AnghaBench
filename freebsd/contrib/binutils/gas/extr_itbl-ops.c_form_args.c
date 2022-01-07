
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itbl_field {int type; struct itbl_field* next; } ;
struct itbl_entry {struct itbl_field* fields; } ;


 int ASSERT (struct itbl_entry*) ;






__attribute__((used)) static char *
form_args (struct itbl_entry *e)
{
  static char s[31];
  char c = 0, *p = s;
  struct itbl_field *f;

  ASSERT (e);
  for (f = e->fields; f; f = f->next)
    {
      switch (f->type)
 {
 case 130:
   c = 'd';
   break;
 case 131:
   c = 't';
   break;
 case 129:
   c = 's';
   break;
 case 128:
   c = 'i';
   break;
 case 132:
   c = 'a';
   break;
 default:
   c = 0;
 }
      if (c)
 {
   if (p != s)
     *p++ = ',';
   *p++ = c;
 }
    }
  *p = 0;
  return s;
}
