#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct reg_entry {int type; int number; struct neon_typed_alias* neon; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/  type; } ;
struct neon_typed_alias {int defined; int index; TYPE_1__ eltype; } ;
struct neon_type {int elems; TYPE_1__* el; } ;
struct TYPE_5__ {scalar_t__ X_op; int X_add_number; } ;
typedef  TYPE_2__ expressionS ;
typedef  enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  GE_NO_PREFIX ; 
 int NTA_HASINDEX ; 
 int NTA_HASTYPE ; 
 int /*<<< orphan*/  NT_invtype ; 
 scalar_t__ O_constant ; 
 int REG_TYPE_NQ ; 
 int REG_TYPE_VFD ; 
 scalar_t__ SUCCESS ; 
 char FUNC0 (char) ; 
 char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 struct reg_entry* FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,struct neon_typed_alias*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct neon_type*,char**) ; 
 scalar_t__ FUNC9 (char**,char) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC12 (char *newname, char *p)
{
  enum arm_reg_type basetype;
  struct reg_entry *basereg;
  struct reg_entry mybasereg;
  struct neon_type ntype;
  struct neon_typed_alias typeinfo;
  char *namebuf, *nameend;
  int namelen;
  
  typeinfo.defined = 0;
  typeinfo.eltype.type = NT_invtype;
  typeinfo.eltype.size = -1;
  typeinfo.index = -1;
  
  nameend = p;
  
  if (FUNC10 (p, " .dn ", 5) == 0)
    basetype = REG_TYPE_VFD;
  else if (FUNC10 (p, " .qn ", 5) == 0)
    basetype = REG_TYPE_NQ;
  else
    return 0;
  
  p += 5;
  
  if (*p == '\0')
    return 0;
  
  basereg = FUNC4 (&p);

  if (basereg && basereg->type != basetype)
    {
      FUNC5 (FUNC2("bad type for register"));
      return 0;
    }

  if (basereg == NULL)
    {
      expressionS exp;
      /* Try parsing as an integer.  */
      FUNC7 (&exp, &p, GE_NO_PREFIX);
      if (exp.X_op != O_constant)
        {
          FUNC5 (FUNC2("expression must be constant"));
          return 0;
        }
      basereg = &mybasereg;
      basereg->number = (basetype == REG_TYPE_NQ) ? exp.X_add_number * 2
                                                  : exp.X_add_number;
      basereg->neon = 0;
    }

  if (basereg->neon)
    typeinfo = *basereg->neon;

  if (FUNC8 (&ntype, &p) == SUCCESS)
    {
      /* We got a type.  */
      if (typeinfo.defined & NTA_HASTYPE)
        {
          FUNC5 (FUNC2("can't redefine the type of a register alias"));
          return 0;
        }
      
      typeinfo.defined |= NTA_HASTYPE;
      if (ntype.elems != 1)
        {
          FUNC5 (FUNC2("you must specify a single type only"));
          return 0;
        }
      typeinfo.eltype = ntype.el[0];
    }
  
  if (FUNC9 (&p, '[') == SUCCESS)
    {
      expressionS exp;
      /* We got a scalar index.  */
    
      if (typeinfo.defined & NTA_HASINDEX)
        {
          FUNC5 (FUNC2("can't redefine the index of a scalar alias"));
          return 0;
        }
    
      FUNC7 (&exp, &p, GE_NO_PREFIX);
    
      if (exp.X_op != O_constant)
        {
          FUNC5 (FUNC2("scalar index must be constant"));
          return 0;
        }
      
      typeinfo.defined |= NTA_HASINDEX;
      typeinfo.index = exp.X_add_number;
    
      if (FUNC9 (&p, ']') == FAIL)
        {
          FUNC5 (FUNC2("expecting ]"));
          return 0;
        }
    }

  namelen = nameend - newname;
  namebuf = FUNC3 (namelen + 1);
  FUNC11 (namebuf, newname, namelen);
  namebuf[namelen] = '\0';
  
  FUNC6 (namebuf, basereg->number, basetype,
                         typeinfo.defined != 0 ? &typeinfo : NULL);
    
  /* Insert name in all uppercase.  */
  for (p = namebuf; *p; p++)
    *p = FUNC1 (*p);
  
  if (FUNC10 (namebuf, newname, namelen))
    FUNC6 (namebuf, basereg->number, basetype,
                           typeinfo.defined != 0 ? &typeinfo : NULL);
  
  /* Insert name in all lowercase.  */
  for (p = namebuf; *p; p++)
    *p = FUNC0 (*p);
  
  if (FUNC10 (namebuf, newname, namelen))
    FUNC6 (namebuf, basereg->number, basetype,
                           typeinfo.defined != 0 ? &typeinfo : NULL);
  
  return 1;
}