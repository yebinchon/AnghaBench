
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ type_p ;
struct fileloc {int dummy; } ;
typedef TYPE_2__* pair_p ;
typedef int options_p ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; int * name; int line; TYPE_1__* opt; } ;
struct TYPE_6__ {int * info; } ;


 int do_typedef (char*,int ,struct fileloc*) ;
 int error_at_line (int *,char*,int *) ;
 int new_structure (char*,int,struct fileloc*,TYPE_2__*,int ) ;
 scalar_t__ strcmp (int *,int *) ;

void
note_yacc_type (options_p o, pair_p fields, pair_p typeinfo,
  struct fileloc *pos)
{
  pair_p p;
  pair_p *p_p;

  for (p = typeinfo; p; p = p->next)
    {
      pair_p m;

      if (p->name == ((void*)0))
 continue;

      if (p->type == (type_p) 1)
 {
   pair_p pp;
   int ok = 0;

   for (pp = typeinfo; pp; pp = pp->next)
     if (pp->type != (type_p) 1
  && strcmp (pp->opt->info, p->opt->info) == 0)
       {
  ok = 1;
  break;
       }
   if (! ok)
     continue;
 }

      for (m = fields; m; m = m->next)
 if (strcmp (m->name, p->name) == 0)
   p->type = m->type;
      if (p->type == ((void*)0))
 {
   error_at_line (&p->line,
    "couldn't match fieldname `%s'", p->name);
   p->name = ((void*)0);
 }
    }

  p_p = &typeinfo;
  while (*p_p)
    {
      pair_p p = *p_p;

      if (p->name == ((void*)0)
   || p->type == (type_p) 1)
 *p_p = p->next;
      else
 p_p = &p->next;
    }

  do_typedef ("YYSTYPE", new_structure ("yy_union", 1, pos, typeinfo, o), pos);
}
