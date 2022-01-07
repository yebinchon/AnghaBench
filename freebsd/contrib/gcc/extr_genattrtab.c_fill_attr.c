
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_ent {struct insn_def* def; } ;
struct insn_def {int insn_code; int vec_idx; int def; struct insn_def* next; } ;
struct attr_value {int dummy; } ;
struct attr_desc {struct attr_value* default_val; int name; scalar_t__ is_const; } ;
typedef int * rtx ;


 int * XEXP (int ,int) ;
 int XSTR (int *,int ) ;
 scalar_t__ XVEC (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 struct insn_def* defs ;
 struct attr_value* get_attr_value (int *,struct attr_desc*,int ) ;
 int insert_insn_ent (struct attr_value*,struct insn_ent*) ;
 struct insn_ent* oballoc (int) ;
 int strcmp_check (int ,int ) ;

__attribute__((used)) static void
fill_attr (struct attr_desc *attr)
{
  struct attr_value *av;
  struct insn_ent *ie;
  struct insn_def *id;
  int i;
  rtx value;



  if (attr->is_const)
    return;

  for (id = defs; id; id = id->next)
    {


      value = ((void*)0);
      if (XVEC (id->def, id->vec_idx))
 for (i = 0; i < XVECLEN (id->def, id->vec_idx); i++)
   if (! strcmp_check (XSTR (XEXP (XVECEXP (id->def, id->vec_idx, i), 0), 0),
         attr->name))
     value = XEXP (XVECEXP (id->def, id->vec_idx, i), 1);

      if (value == ((void*)0))
 av = attr->default_val;
      else
 av = get_attr_value (value, attr, id->insn_code);

      ie = oballoc (sizeof (struct insn_ent));
      ie->def = id;
      insert_insn_ent (av, ie);
    }
}
