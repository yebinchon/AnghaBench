#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 char* FUNC1 (struct minimal_symbol*) ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 int FUNC2 (struct type*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 scalar_t__ FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 struct type* FUNC6 (struct type*) ; 
 scalar_t__ FUNC7 (struct type*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct type* FUNC9 (struct value*) ; 
 struct type* FUNC10 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct type*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 struct minimal_symbol* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC15 (char*,char) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct value* FUNC17 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC18 (struct value*,scalar_t__) ; 

__attribute__((used)) static struct type *
FUNC19 (struct value *v, int *full, int *top, int *using_enc)
{
  struct type *known_type;
  struct type *rtti_type;
  CORE_ADDR coreptr;
  struct value *vp;
  long top_offset = 0;
  char rtti_type_name[256];
  CORE_ADDR vtbl;
  struct minimal_symbol *minsym;
  struct symbol *sym;
  char *demangled_name;
  struct type *btype;

  if (full)
    *full = 0;
  if (top)
    *top = -1;
  if (using_enc)
    *using_enc = 0;

  /* Get declared type */
  known_type = FUNC9 (v);
  FUNC0 (known_type);
  /* RTTI works only or class objects */
  if (FUNC3 (known_type) != TYPE_CODE_CLASS)
    return NULL;

  /* Plan on this changing in the future as i get around to setting
     the vtables properly for G++ compiled stuff.  Also, I'll be using
     the type info functions, which are always right.  Deal with it
     until then.  */

  /* If the type has no vptr fieldno, try to get it filled in */
  if (FUNC7(known_type) < 0)
    FUNC12(known_type);

  /* If we still can't find one, give up */
  if (FUNC7(known_type) < 0)
    return NULL;

  /* Make sure our basetype and known type match, otherwise, cast
     so we can get at the vtable properly.
  */
  btype = FUNC6 (known_type);
  FUNC0 (btype);
  if (btype != known_type )
    {
      v = FUNC17 (btype, v);
      if (using_enc)
        *using_enc=1;
    }
  /*
    We can't use value_ind here, because it would want to use RTTI, and
    we'd waste a bunch of time figuring out we already know the type.
    Besides, we don't care about the type, just the actual pointer
  */
  if (FUNC8 (FUNC18 (v, FUNC7 (known_type))) == 0)
    return NULL;

  vtbl=FUNC16(FUNC18(v,FUNC7(known_type)));

  /* Try to find a symbol that is the vtable */
  minsym=FUNC14(vtbl);
  if (minsym==NULL
      || (demangled_name=FUNC1 (minsym))==NULL
      || !FUNC13 (demangled_name))
    return NULL;

  /* If we just skip the prefix, we get screwed by namespaces */
  demangled_name=FUNC11(demangled_name,DMGL_PARAMS|DMGL_ANSI);
  *(FUNC15(demangled_name,' '))=0;

  /* Lookup the type for the name */
  /* FIXME: chastain/2003-11-26: block=NULL is bogus.  See pr gdb/1465. */
  rtti_type = FUNC10 (demangled_name, NULL);
  if (rtti_type == NULL)
    return NULL;

  if (FUNC5(rtti_type) > 1 &&  full && (*full) != 1)
    {
      if (top)
        *top=FUNC2(rtti_type,FUNC7(rtti_type))/8;
      if (top && ((*top) >0))
        {
          if (FUNC4(rtti_type) > FUNC4(known_type))
            {
              if (full)
                *full=0;
            }
          else
            {
              if (full)
                *full=1;
            }
        }
    }
  else
    {
      if (full)
        *full=1;
    }

  return rtti_type;
}