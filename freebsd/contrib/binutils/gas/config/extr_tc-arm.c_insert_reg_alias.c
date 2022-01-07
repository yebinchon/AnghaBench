
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_entry {int number; int type; char const* name; int * neon; scalar_t__ builtin; } ;
typedef int PTR ;


 scalar_t__ FALSE ;
 int _ (char*) ;
 int abort () ;
 int arm_reg_hsh ;
 int as_warn (int ,char*) ;
 struct reg_entry* hash_find (int ,char*) ;
 scalar_t__ hash_insert (int ,char const*,int ) ;
 struct reg_entry* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static struct reg_entry *
insert_reg_alias (char *str, int number, int type)
{
  struct reg_entry *new;
  const char *name;

  if ((new = hash_find (arm_reg_hsh, str)) != 0)
    {
      if (new->builtin)
 as_warn (_("ignoring attempt to redefine built-in register '%s'"), str);



      else if (new->number != number || new->type != type)
 as_warn (_("ignoring redefinition of register alias '%s'"), str);

      return 0;
    }

  name = xstrdup (str);
  new = xmalloc (sizeof (struct reg_entry));

  new->name = name;
  new->number = number;
  new->type = type;
  new->builtin = FALSE;
  new->neon = ((void*)0);

  if (hash_insert (arm_reg_hsh, name, (PTR) new))
    abort ();

  return new;
}
