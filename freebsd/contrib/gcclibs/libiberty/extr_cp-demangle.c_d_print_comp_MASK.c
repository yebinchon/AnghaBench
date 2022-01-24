#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {char* s; int len; } ;
struct TYPE_22__ {TYPE_8__* type; } ;
struct TYPE_20__ {TYPE_6__* op; } ;
struct TYPE_18__ {struct demangle_component const* name; } ;
struct TYPE_17__ {char* string; int len; } ;
struct TYPE_16__ {struct demangle_component const* name; } ;
struct TYPE_15__ {struct demangle_component const* name; } ;
struct TYPE_14__ {long number; } ;
struct TYPE_13__ {TYPE_10__ s_name; TYPE_9__ s_builtin; TYPE_7__ s_operator; TYPE_5__ s_extended_operator; TYPE_4__ s_string; TYPE_3__ s_dtor; TYPE_2__ s_ctor; TYPE_1__ s_number; } ;
typedef  struct demangle_component {int type; TYPE_11__ u; } const demangle_component ;
struct d_print_template {struct d_print_template* next; struct demangle_component const* template_decl; } ;
struct d_print_mod {int printed; struct d_print_mod* next; struct d_print_template* templates; struct demangle_component const* mod; } ;
struct d_print_info {int options; struct d_print_mod* modifiers; struct d_print_template* templates; } ;
typedef  enum d_builtin_type_print { ____Placeholder_d_builtin_type_print } d_builtin_type_print ;
struct TYPE_21__ {char* name; int len; char* java_name; int java_len; int print; } ;
struct TYPE_19__ {char* name; int len; } ;

/* Variables and functions */
#define  DEMANGLE_COMPONENT_ARGLIST 185 
#define  DEMANGLE_COMPONENT_ARRAY_TYPE 184 
#define  DEMANGLE_COMPONENT_BINARY 183 
#define  DEMANGLE_COMPONENT_BINARY_ARGS 182 
#define  DEMANGLE_COMPONENT_BUILTIN_TYPE 181 
#define  DEMANGLE_COMPONENT_CAST 180 
#define  DEMANGLE_COMPONENT_COMPLEX 179 
#define  DEMANGLE_COMPONENT_CONST 178 
#define  DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE 177 
#define  DEMANGLE_COMPONENT_CONST_THIS 176 
#define  DEMANGLE_COMPONENT_COVARIANT_THUNK 175 
#define  DEMANGLE_COMPONENT_CTOR 174 
#define  DEMANGLE_COMPONENT_DTOR 173 
#define  DEMANGLE_COMPONENT_EXTENDED_OPERATOR 172 
#define  DEMANGLE_COMPONENT_FUNCTION_TYPE 171 
#define  DEMANGLE_COMPONENT_GUARD 170 
#define  DEMANGLE_COMPONENT_HIDDEN_ALIAS 169 
#define  DEMANGLE_COMPONENT_IMAGINARY 168 
#define  DEMANGLE_COMPONENT_JAVA_CLASS 167 
#define  DEMANGLE_COMPONENT_LITERAL 166 
#define  DEMANGLE_COMPONENT_LITERAL_NEG 165 
#define  DEMANGLE_COMPONENT_LOCAL_NAME 164 
#define  DEMANGLE_COMPONENT_NAME 163 
#define  DEMANGLE_COMPONENT_OPERATOR 162 
#define  DEMANGLE_COMPONENT_POINTER 161 
#define  DEMANGLE_COMPONENT_PTRMEM_TYPE 160 
#define  DEMANGLE_COMPONENT_QUAL_NAME 159 
#define  DEMANGLE_COMPONENT_REFERENCE 158 
#define  DEMANGLE_COMPONENT_REFTEMP 157 
#define  DEMANGLE_COMPONENT_RESTRICT 156 
#define  DEMANGLE_COMPONENT_RESTRICT_THIS 155 
#define  DEMANGLE_COMPONENT_SUB_STD 154 
#define  DEMANGLE_COMPONENT_TEMPLATE 153 
#define  DEMANGLE_COMPONENT_TEMPLATE_ARGLIST 152 
#define  DEMANGLE_COMPONENT_TEMPLATE_PARAM 151 
#define  DEMANGLE_COMPONENT_THUNK 150 
#define  DEMANGLE_COMPONENT_TRINARY 149 
#define  DEMANGLE_COMPONENT_TRINARY_ARG1 148 
#define  DEMANGLE_COMPONENT_TRINARY_ARG2 147 
#define  DEMANGLE_COMPONENT_TYPED_NAME 146 
#define  DEMANGLE_COMPONENT_TYPEINFO 145 
#define  DEMANGLE_COMPONENT_TYPEINFO_FN 144 
#define  DEMANGLE_COMPONENT_TYPEINFO_NAME 143 
#define  DEMANGLE_COMPONENT_UNARY 142 
#define  DEMANGLE_COMPONENT_VENDOR_TYPE 141 
#define  DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL 140 
#define  DEMANGLE_COMPONENT_VIRTUAL_THUNK 139 
#define  DEMANGLE_COMPONENT_VOLATILE 138 
#define  DEMANGLE_COMPONENT_VOLATILE_THIS 137 
#define  DEMANGLE_COMPONENT_VTABLE 136 
#define  DEMANGLE_COMPONENT_VTT 135 
 int DMGL_JAVA ; 
 int DMGL_RET_POSTFIX ; 
#define  D_PRINT_BOOL 134 
 int D_PRINT_DEFAULT ; 
 int D_PRINT_FLOAT ; 
#define  D_PRINT_INT 133 
#define  D_PRINT_LONG 132 
#define  D_PRINT_LONG_LONG 131 
#define  D_PRINT_UNSIGNED 130 
#define  D_PRINT_UNSIGNED_LONG 129 
#define  D_PRINT_UNSIGNED_LONG_LONG 128 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct d_print_info*,char*) ; 
 char FUNC4 (struct d_print_info*) ; 
 struct demangle_component const* FUNC5 (struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC6 (struct d_print_info*,struct demangle_component const*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC7 (struct d_print_info*,struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC8 (struct d_print_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct d_print_info*,struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC10 (struct d_print_info*,struct demangle_component const*,struct d_print_mod*) ; 
 int /*<<< orphan*/  FUNC11 (struct d_print_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct d_print_info*,struct demangle_component const*) ; 
 scalar_t__ FUNC13 (struct d_print_info*) ; 
 struct demangle_component const* FUNC14 (struct demangle_component const*) ; 

__attribute__((used)) static void
FUNC15 (struct d_print_info *dpi,
              const struct demangle_component *dc)
{
  if (dc == NULL)
    {
      FUNC8 (dpi);
      return;
    }
  if (FUNC13 (dpi))
    return;

  switch (dc->type)
    {
    case DEMANGLE_COMPONENT_NAME:
      if ((dpi->options & DMGL_JAVA) == 0)
	FUNC1 (dpi, dc->u.s_name.s, dc->u.s_name.len);
      else
	FUNC11 (dpi, dc->u.s_name.s, dc->u.s_name.len);
      return;

    case DEMANGLE_COMPONENT_QUAL_NAME:
    case DEMANGLE_COMPONENT_LOCAL_NAME:
      FUNC15 (dpi, FUNC5 (dc));
      if ((dpi->options & DMGL_JAVA) == 0)
	FUNC3 (dpi, "::");
      else
	FUNC2 (dpi, '.');
      FUNC15 (dpi, FUNC14 (dc));
      return;

    case DEMANGLE_COMPONENT_TYPED_NAME:
      {
	struct d_print_mod *hold_modifiers;
	struct demangle_component *typed_name;
	struct d_print_mod adpm[4];
	unsigned int i;
	struct d_print_template dpt;

	/* Pass the name down to the type so that it can be printed in
	   the right place for the type.  We also have to pass down
	   any CV-qualifiers, which apply to the this parameter.  */
	hold_modifiers = dpi->modifiers;
	i = 0;
	typed_name = FUNC5 (dc);
	while (typed_name != NULL)
	  {
	    if (i >= sizeof adpm / sizeof adpm[0])
	      {
		FUNC8 (dpi);
		return;
	      }

	    adpm[i].next = dpi->modifiers;
	    dpi->modifiers = &adpm[i];
	    adpm[i].mod = typed_name;
	    adpm[i].printed = 0;
	    adpm[i].templates = dpi->templates;
	    ++i;

	    if (typed_name->type != DEMANGLE_COMPONENT_RESTRICT_THIS
		&& typed_name->type != DEMANGLE_COMPONENT_VOLATILE_THIS
		&& typed_name->type != DEMANGLE_COMPONENT_CONST_THIS)
	      break;

	    typed_name = FUNC5 (typed_name);
	  }

	/* If typed_name is a template, then it applies to the
	   function type as well.  */
	if (typed_name->type == DEMANGLE_COMPONENT_TEMPLATE)
	  {
	    dpt.next = dpi->templates;
	    dpi->templates = &dpt;
	    dpt.template_decl = typed_name;
	  }

	/* If typed_name is a DEMANGLE_COMPONENT_LOCAL_NAME, then
	   there may be CV-qualifiers on its right argument which
	   really apply here; this happens when parsing a class which
	   is local to a function.  */
	if (typed_name->type == DEMANGLE_COMPONENT_LOCAL_NAME)
	  {
	    struct demangle_component *local_name;

	    local_name = FUNC14 (typed_name);
	    while (local_name->type == DEMANGLE_COMPONENT_RESTRICT_THIS
		   || local_name->type == DEMANGLE_COMPONENT_VOLATILE_THIS
		   || local_name->type == DEMANGLE_COMPONENT_CONST_THIS)
	      {
		if (i >= sizeof adpm / sizeof adpm[0])
		  {
		    FUNC8 (dpi);
		    return;
		  }

		adpm[i] = adpm[i - 1];
		adpm[i].next = &adpm[i - 1];
		dpi->modifiers = &adpm[i];

		adpm[i - 1].mod = local_name;
		adpm[i - 1].printed = 0;
		adpm[i - 1].templates = dpi->templates;
		++i;

		local_name = FUNC5 (local_name);
	      }
	  }

	FUNC15 (dpi, FUNC14 (dc));

	if (typed_name->type == DEMANGLE_COMPONENT_TEMPLATE)
	  dpi->templates = dpt.next;

	/* If the modifiers didn't get printed by the type, print them
	   now.  */
	while (i > 0)
	  {
	    --i;
	    if (! adpm[i].printed)
	      {
		FUNC2 (dpi, ' ');
		FUNC12 (dpi, adpm[i].mod);
	      }
	  }

	dpi->modifiers = hold_modifiers;

	return;
      }

    case DEMANGLE_COMPONENT_TEMPLATE:
      {
	struct d_print_mod *hold_dpm;

	/* Don't push modifiers into a template definition.  Doing so
	   could give the wrong definition for a template argument.
	   Instead, treat the template essentially as a name.  */

	hold_dpm = dpi->modifiers;
	dpi->modifiers = NULL;

	FUNC15 (dpi, FUNC5 (dc));
	if (FUNC4 (dpi) == '<')
	  FUNC2 (dpi, ' ');
	FUNC2 (dpi, '<');
	FUNC15 (dpi, FUNC14 (dc));
	/* Avoid generating two consecutive '>' characters, to avoid
	   the C++ syntactic ambiguity.  */
	if (FUNC4 (dpi) == '>')
	  FUNC2 (dpi, ' ');
	FUNC2 (dpi, '>');

	dpi->modifiers = hold_dpm;

	return;
      }

    case DEMANGLE_COMPONENT_TEMPLATE_PARAM:
      {
	long i;
	struct demangle_component *a;
	struct d_print_template *hold_dpt;

	if (dpi->templates == NULL)
	  {
	    FUNC8 (dpi);
	    return;
	  }
	i = dc->u.s_number.number;
	for (a = FUNC14 (dpi->templates->template_decl);
	     a != NULL;
	     a = FUNC14 (a))
	  {
	    if (a->type != DEMANGLE_COMPONENT_TEMPLATE_ARGLIST)
	      {
		FUNC8 (dpi);
		return;
	      }
	    if (i <= 0)
	      break;
	    --i;
	  }
	if (i != 0 || a == NULL)
	  {
	    FUNC8 (dpi);
	    return;
	  }

	/* While processing this parameter, we need to pop the list of
	   templates.  This is because the template parameter may
	   itself be a reference to a parameter of an outer
	   template.  */

	hold_dpt = dpi->templates;
	dpi->templates = hold_dpt->next;

	FUNC15 (dpi, FUNC5 (a));

	dpi->templates = hold_dpt;

	return;
      }

    case DEMANGLE_COMPONENT_CTOR:
      FUNC15 (dpi, dc->u.s_ctor.name);
      return;

    case DEMANGLE_COMPONENT_DTOR:
      FUNC2 (dpi, '~');
      FUNC15 (dpi, dc->u.s_dtor.name);
      return;

    case DEMANGLE_COMPONENT_VTABLE:
      FUNC3 (dpi, "vtable for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_VTT:
      FUNC3 (dpi, "VTT for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE:
      FUNC3 (dpi, "construction vtable for ");
      FUNC15 (dpi, FUNC5 (dc));
      FUNC3 (dpi, "-in-");
      FUNC15 (dpi, FUNC14 (dc));
      return;

    case DEMANGLE_COMPONENT_TYPEINFO:
      FUNC3 (dpi, "typeinfo for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_TYPEINFO_NAME:
      FUNC3 (dpi, "typeinfo name for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_TYPEINFO_FN:
      FUNC3 (dpi, "typeinfo fn for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_THUNK:
      FUNC3 (dpi, "non-virtual thunk to ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_VIRTUAL_THUNK:
      FUNC3 (dpi, "virtual thunk to ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_COVARIANT_THUNK:
      FUNC3 (dpi, "covariant return thunk to ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_JAVA_CLASS:
      FUNC3 (dpi, "java Class for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_GUARD:
      FUNC3 (dpi, "guard variable for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_REFTEMP:
      FUNC3 (dpi, "reference temporary for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_HIDDEN_ALIAS:
      FUNC3 (dpi, "hidden alias for ");
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_SUB_STD:
      FUNC1 (dpi, dc->u.s_string.string, dc->u.s_string.len);
      return;

    case DEMANGLE_COMPONENT_RESTRICT:
    case DEMANGLE_COMPONENT_VOLATILE:
    case DEMANGLE_COMPONENT_CONST:
      {
	struct d_print_mod *pdpm;

	/* When printing arrays, it's possible to have cases where the
	   same CV-qualifier gets pushed on the stack multiple times.
	   We only need to print it once.  */

	for (pdpm = dpi->modifiers; pdpm != NULL; pdpm = pdpm->next)
	  {
	    if (! pdpm->printed)
	      {
		if (pdpm->mod->type != DEMANGLE_COMPONENT_RESTRICT
		    && pdpm->mod->type != DEMANGLE_COMPONENT_VOLATILE
		    && pdpm->mod->type != DEMANGLE_COMPONENT_CONST)
		  break;
		if (pdpm->mod->type == dc->type)
		  {
		    FUNC15 (dpi, FUNC5 (dc));
		    return;
		  }
	      }
	  }
      }
      /* Fall through.  */
    case DEMANGLE_COMPONENT_RESTRICT_THIS:
    case DEMANGLE_COMPONENT_VOLATILE_THIS:
    case DEMANGLE_COMPONENT_CONST_THIS:
    case DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL:
    case DEMANGLE_COMPONENT_POINTER:
    case DEMANGLE_COMPONENT_REFERENCE:
    case DEMANGLE_COMPONENT_COMPLEX:
    case DEMANGLE_COMPONENT_IMAGINARY:
      {
	/* We keep a list of modifiers on the stack.  */
	struct d_print_mod dpm;

	dpm.next = dpi->modifiers;
	dpi->modifiers = &dpm;
	dpm.mod = dc;
	dpm.printed = 0;
	dpm.templates = dpi->templates;

	FUNC15 (dpi, FUNC5 (dc));

	/* If the modifier didn't get printed by the type, print it
	   now.  */
	if (! dpm.printed)
	  FUNC12 (dpi, dc);

	dpi->modifiers = dpm.next;

	return;
      }

    case DEMANGLE_COMPONENT_BUILTIN_TYPE:
      if ((dpi->options & DMGL_JAVA) == 0)
	FUNC1 (dpi, dc->u.s_builtin.type->name,
			 dc->u.s_builtin.type->len);
      else
	FUNC1 (dpi, dc->u.s_builtin.type->java_name,
			 dc->u.s_builtin.type->java_len);
      return;

    case DEMANGLE_COMPONENT_VENDOR_TYPE:
      FUNC15 (dpi, FUNC5 (dc));
      return;

    case DEMANGLE_COMPONENT_FUNCTION_TYPE:
      {
	if ((dpi->options & DMGL_RET_POSTFIX) != 0)
	  FUNC10 (dpi, dc, dpi->modifiers);

	/* Print return type if present */
	if (FUNC5 (dc) != NULL)
	  {
	    struct d_print_mod dpm;

	    /* We must pass this type down as a modifier in order to
	       print it in the right location.  */
	    dpm.next = dpi->modifiers;
	    dpi->modifiers = &dpm;
	    dpm.mod = dc;
	    dpm.printed = 0;
	    dpm.templates = dpi->templates;

	    FUNC15 (dpi, FUNC5 (dc));

	    dpi->modifiers = dpm.next;

	    if (dpm.printed)
	      return;

	    /* In standard prefix notation, there is a space between the
	       return type and the function signature.  */
	    if ((dpi->options & DMGL_RET_POSTFIX) == 0)
	      FUNC2 (dpi, ' ');
	  }

	if ((dpi->options & DMGL_RET_POSTFIX) == 0) 
	  FUNC10 (dpi, dc, dpi->modifiers);

	return;
      }

    case DEMANGLE_COMPONENT_ARRAY_TYPE:
      {
	struct d_print_mod *hold_modifiers;
	struct d_print_mod adpm[4];
	unsigned int i;
	struct d_print_mod *pdpm;

	/* We must pass this type down as a modifier in order to print
	   multi-dimensional arrays correctly.  If the array itself is
	   CV-qualified, we act as though the element type were
	   CV-qualified.  We do this by copying the modifiers down
	   rather than fiddling pointers, so that we don't wind up
	   with a d_print_mod higher on the stack pointing into our
	   stack frame after we return.  */

	hold_modifiers = dpi->modifiers;

	adpm[0].next = hold_modifiers;
	dpi->modifiers = &adpm[0];
	adpm[0].mod = dc;
	adpm[0].printed = 0;
	adpm[0].templates = dpi->templates;

	i = 1;
	pdpm = hold_modifiers;
	while (pdpm != NULL
	       && (pdpm->mod->type == DEMANGLE_COMPONENT_RESTRICT
		   || pdpm->mod->type == DEMANGLE_COMPONENT_VOLATILE
		   || pdpm->mod->type == DEMANGLE_COMPONENT_CONST))
	  {
	    if (! pdpm->printed)
	      {
		if (i >= sizeof adpm / sizeof adpm[0])
		  {
		    FUNC8 (dpi);
		    return;
		  }

		adpm[i] = *pdpm;
		adpm[i].next = dpi->modifiers;
		dpi->modifiers = &adpm[i];
		pdpm->printed = 1;
		++i;
	      }

	    pdpm = pdpm->next;
	  }

	FUNC15 (dpi, FUNC14 (dc));

	dpi->modifiers = hold_modifiers;

	if (adpm[0].printed)
	  return;

	while (i > 1)
	  {
	    --i;
	    FUNC12 (dpi, adpm[i].mod);
	  }

	FUNC6 (dpi, dc, dpi->modifiers);

	return;
      }

    case DEMANGLE_COMPONENT_PTRMEM_TYPE:
      {
	struct d_print_mod dpm;

	dpm.next = dpi->modifiers;
	dpi->modifiers = &dpm;
	dpm.mod = dc;
	dpm.printed = 0;
	dpm.templates = dpi->templates;

	FUNC15 (dpi, FUNC14 (dc));

	/* If the modifier didn't get printed by the type, print it
	   now.  */
	if (! dpm.printed)
	  {
	    FUNC2 (dpi, ' ');
	    FUNC15 (dpi, FUNC5 (dc));
	    FUNC3 (dpi, "::*");
	  }

	dpi->modifiers = dpm.next;

	return;
      }

    case DEMANGLE_COMPONENT_ARGLIST:
    case DEMANGLE_COMPONENT_TEMPLATE_ARGLIST:
      FUNC15 (dpi, FUNC5 (dc));
      if (FUNC14 (dc) != NULL)
	{
	  FUNC3 (dpi, ", ");
	  FUNC15 (dpi, FUNC14 (dc));
	}
      return;

    case DEMANGLE_COMPONENT_OPERATOR:
      {
	char c;

	FUNC3 (dpi, "operator");
	c = dc->u.s_operator.op->name[0];
	if (FUNC0 (c))
	  FUNC2 (dpi, ' ');
	FUNC1 (dpi, dc->u.s_operator.op->name,
			 dc->u.s_operator.op->len);
	return;
      }

    case DEMANGLE_COMPONENT_EXTENDED_OPERATOR:
      FUNC3 (dpi, "operator ");
      FUNC15 (dpi, dc->u.s_extended_operator.name);
      return;

    case DEMANGLE_COMPONENT_CAST:
      FUNC3 (dpi, "operator ");
      FUNC7 (dpi, dc);
      return;

    case DEMANGLE_COMPONENT_UNARY:
      if (FUNC5 (dc)->type != DEMANGLE_COMPONENT_CAST)
	FUNC9 (dpi, FUNC5 (dc));
      else
	{
	  FUNC2 (dpi, '(');
	  FUNC7 (dpi, FUNC5 (dc));
	  FUNC2 (dpi, ')');
	}
      FUNC2 (dpi, '(');
      FUNC15 (dpi, FUNC14 (dc));
      FUNC2 (dpi, ')');
      return;

    case DEMANGLE_COMPONENT_BINARY:
      if (FUNC14 (dc)->type != DEMANGLE_COMPONENT_BINARY_ARGS)
	{
	  FUNC8 (dpi);
	  return;
	}

      /* We wrap an expression which uses the greater-than operator in
	 an extra layer of parens so that it does not get confused
	 with the '>' which ends the template parameters.  */
      if (FUNC5 (dc)->type == DEMANGLE_COMPONENT_OPERATOR
	  && FUNC5 (dc)->u.s_operator.op->len == 1
	  && FUNC5 (dc)->u.s_operator.op->name[0] == '>')
	FUNC2 (dpi, '(');

      FUNC2 (dpi, '(');
      FUNC15 (dpi, FUNC5 (FUNC14 (dc)));
      FUNC3 (dpi, ") ");
      FUNC9 (dpi, FUNC5 (dc));
      FUNC3 (dpi, " (");
      FUNC15 (dpi, FUNC14 (FUNC14 (dc)));
      FUNC2 (dpi, ')');

      if (FUNC5 (dc)->type == DEMANGLE_COMPONENT_OPERATOR
	  && FUNC5 (dc)->u.s_operator.op->len == 1
	  && FUNC5 (dc)->u.s_operator.op->name[0] == '>')
	FUNC2 (dpi, ')');

      return;

    case DEMANGLE_COMPONENT_BINARY_ARGS:
      /* We should only see this as part of DEMANGLE_COMPONENT_BINARY.  */
      FUNC8 (dpi);
      return;

    case DEMANGLE_COMPONENT_TRINARY:
      if (FUNC14 (dc)->type != DEMANGLE_COMPONENT_TRINARY_ARG1
	  || FUNC14 (FUNC14 (dc))->type != DEMANGLE_COMPONENT_TRINARY_ARG2)
	{
	  FUNC8 (dpi);
	  return;
	}
      FUNC2 (dpi, '(');
      FUNC15 (dpi, FUNC5 (FUNC14 (dc)));
      FUNC3 (dpi, ") ");
      FUNC9 (dpi, FUNC5 (dc));
      FUNC3 (dpi, " (");
      FUNC15 (dpi, FUNC5 (FUNC14 (FUNC14 (dc))));
      FUNC3 (dpi, ") : (");
      FUNC15 (dpi, FUNC14 (FUNC14 (FUNC14 (dc))));
      FUNC2 (dpi, ')');
      return;

    case DEMANGLE_COMPONENT_TRINARY_ARG1:
    case DEMANGLE_COMPONENT_TRINARY_ARG2:
      /* We should only see these are part of DEMANGLE_COMPONENT_TRINARY.  */
      FUNC8 (dpi);
      return;

    case DEMANGLE_COMPONENT_LITERAL:
    case DEMANGLE_COMPONENT_LITERAL_NEG:
      {
	enum d_builtin_type_print tp;

	/* For some builtin types, produce simpler output.  */
	tp = D_PRINT_DEFAULT;
	if (FUNC5 (dc)->type == DEMANGLE_COMPONENT_BUILTIN_TYPE)
	  {
	    tp = FUNC5 (dc)->u.s_builtin.type->print;
	    switch (tp)
	      {
	      case D_PRINT_INT:
	      case D_PRINT_UNSIGNED:
	      case D_PRINT_LONG:
	      case D_PRINT_UNSIGNED_LONG:
	      case D_PRINT_LONG_LONG:
	      case D_PRINT_UNSIGNED_LONG_LONG:
		if (FUNC14 (dc)->type == DEMANGLE_COMPONENT_NAME)
		  {
		    if (dc->type == DEMANGLE_COMPONENT_LITERAL_NEG)
		      FUNC2 (dpi, '-');
		    FUNC15 (dpi, FUNC14 (dc));
		    switch (tp)
		      {
		      default:
			break;
		      case D_PRINT_UNSIGNED:
			FUNC2 (dpi, 'u');
			break;
		      case D_PRINT_LONG:
			FUNC2 (dpi, 'l');
			break;
		      case D_PRINT_UNSIGNED_LONG:
			FUNC3 (dpi, "ul");
			break;
		      case D_PRINT_LONG_LONG:
			FUNC3 (dpi, "ll");
			break;
		      case D_PRINT_UNSIGNED_LONG_LONG:
			FUNC3 (dpi, "ull");
			break;
		      }
		    return;
		  }
		break;

	      case D_PRINT_BOOL:
		if (FUNC14 (dc)->type == DEMANGLE_COMPONENT_NAME
		    && FUNC14 (dc)->u.s_name.len == 1
		    && dc->type == DEMANGLE_COMPONENT_LITERAL)
		  {
		    switch (FUNC14 (dc)->u.s_name.s[0])
		      {
		      case '0':
			FUNC3 (dpi, "false");
			return;
		      case '1':
			FUNC3 (dpi, "true");
			return;
		      default:
			break;
		      }
		  }
		break;

	      default:
		break;
	      }
	  }

	FUNC2 (dpi, '(');
	FUNC15 (dpi, FUNC5 (dc));
	FUNC2 (dpi, ')');
	if (dc->type == DEMANGLE_COMPONENT_LITERAL_NEG)
	  FUNC2 (dpi, '-');
	if (tp == D_PRINT_FLOAT)
	  FUNC2 (dpi, '[');
	FUNC15 (dpi, FUNC14 (dc));
	if (tp == D_PRINT_FLOAT)
	  FUNC2 (dpi, ']');
      }
      return;

    default:
      FUNC8 (dpi);
      return;
    }
}