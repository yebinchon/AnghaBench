#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct c_typespec {void* spec; void* kind; } ;
struct c_declspecs {int type_seen_p; } ;
typedef  int /*<<< orphan*/  c_parser ;
typedef  scalar_t__ c_id_kind ;
struct TYPE_2__ {scalar_t__ id_kind; int keyword; void* value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_LESS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 scalar_t__ C_ID_CLASSNAME ; 
 scalar_t__ C_ID_TYPENAME ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  RID_ATTRIBUTE 156 
#define  RID_AUTO 155 
#define  RID_BOOL 154 
#define  RID_CHAR 153 
#define  RID_COMPLEX 152 
#define  RID_CONST 151 
#define  RID_DFLOAT128 150 
#define  RID_DFLOAT32 149 
#define  RID_DFLOAT64 148 
#define  RID_DOUBLE 147 
#define  RID_ENUM 146 
#define  RID_EXTERN 145 
#define  RID_FLOAT 144 
#define  RID_INLINE 143 
#define  RID_INT 142 
#define  RID_LONG 141 
#define  RID_REGISTER 140 
#define  RID_RESTRICT 139 
#define  RID_SHORT 138 
#define  RID_SIGNED 137 
#define  RID_STATIC 136 
#define  RID_STRUCT 135 
#define  RID_THREAD 134 
#define  RID_TYPEDEF 133 
#define  RID_TYPEOF 132 
#define  RID_UNION 131 
#define  RID_UNSIGNED 130 
#define  RID_VOID 129 
#define  RID_VOLATILE 128 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct c_typespec FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_typespec FUNC9 (int /*<<< orphan*/ *) ; 
 struct c_typespec FUNC10 (int /*<<< orphan*/ *) ; 
 void* ctsk_objc ; 
 void* ctsk_resword ; 
 void* ctsk_typedef ; 
 int /*<<< orphan*/  FUNC11 (struct c_declspecs*,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct c_declspecs*,void*) ; 
 int /*<<< orphan*/  FUNC13 (struct c_declspecs*,void*) ; 
 int /*<<< orphan*/  FUNC14 (struct c_declspecs*,struct c_typespec) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 void* FUNC16 (void*) ; 
 void* FUNC17 (void*,void*) ; 

__attribute__((used)) static void
FUNC18 (c_parser *parser, struct c_declspecs *specs,
		    bool scspec_ok, bool typespec_ok, bool start_attr_ok)
{
  bool attrs_ok = start_attr_ok;
  bool seen_type = specs->type_seen_p;
  while (FUNC5 (parser, CPP_NAME)
	 || FUNC5 (parser, CPP_KEYWORD)
	 || (FUNC1 () && FUNC5 (parser, CPP_LESS)))
    {
      struct c_typespec t;
      tree attrs;
      if (FUNC5 (parser, CPP_NAME))
	{
	  tree value = FUNC8 (parser)->value;
	  c_id_kind kind = FUNC8 (parser)->id_kind;
	  /* This finishes the specifiers unless a type name is OK, it
	     is declared as a type name and a type name hasn't yet
	     been seen.  */
	  if (!typespec_ok || seen_type
	      || (kind != C_ID_TYPENAME && kind != C_ID_CLASSNAME))
	    break;
	  FUNC3 (parser);
	  seen_type = true;
	  attrs_ok = true;
	  if (kind == C_ID_TYPENAME
	      && (!FUNC1 ()
		  || FUNC6 (parser, CPP_LESS)))
	    {
	      t.kind = ctsk_typedef;
	      /* For a typedef name, record the meaning, not the name.
		 In case of 'foo foo, bar;'.  */
	      t.spec = FUNC16 (value);
	    }
	  else
	    {
	      tree proto = NULL_TREE;
	      FUNC15 (FUNC1 ());
	      t.kind = ctsk_objc;
	      if (FUNC5 (parser, CPP_LESS))
		proto = FUNC7 (parser);
	      t.spec = FUNC17 (value, proto);
	    }
	  FUNC14 (specs, t);
	  continue;
	}
      if (FUNC5 (parser, CPP_LESS))
	{
	  /* Make "<SomeProtocol>" equivalent to "id <SomeProtocol>" -
	     nisse@lysator.liu.se.  */
	  tree proto;
	  FUNC15 (FUNC1 ());
	  if (!typespec_ok || seen_type)
	    break;
	  proto = FUNC7 (parser);
	  t.kind = ctsk_objc;
	  t.spec = FUNC17 (NULL_TREE, proto);
	  FUNC14 (specs, t);
	  continue;
	}
      FUNC15 (FUNC5 (parser, CPP_KEYWORD));
      switch (FUNC8 (parser)->keyword)
	{
	case RID_STATIC:
	case RID_EXTERN:
	case RID_REGISTER:
	case RID_TYPEDEF:
	case RID_INLINE:
	case RID_AUTO:
	case RID_THREAD:
	  if (!scspec_ok)
	    goto out;
	  attrs_ok = true;
	  /* TODO: Distinguish between function specifiers (inline)
	     and storage class specifiers, either here or in
	     declspecs_add_scspec.  */
	  FUNC13 (specs, FUNC8 (parser)->value);
	  FUNC3 (parser);
	  break;
	case RID_UNSIGNED:
	case RID_LONG:
	case RID_SHORT:
	case RID_SIGNED:
	case RID_COMPLEX:
	case RID_INT:
	case RID_CHAR:
	case RID_FLOAT:
	case RID_DOUBLE:
	case RID_VOID:
	case RID_DFLOAT32:
	case RID_DFLOAT64:
	case RID_DFLOAT128:
	case RID_BOOL:
	  if (!typespec_ok)
	    goto out;
	  attrs_ok = true;
	  seen_type = true;
	  FUNC0 (1);
	  t.kind = ctsk_resword;
	  t.spec = FUNC8 (parser)->value;
	  FUNC14 (specs, t);
	  FUNC3 (parser);
	  break;
	case RID_ENUM:
	  if (!typespec_ok)
	    goto out;
	  attrs_ok = true;
	  seen_type = true;
	  t = FUNC4 (parser);
	  FUNC14 (specs, t);
	  break;
	case RID_STRUCT:
	case RID_UNION:
	  if (!typespec_ok)
	    goto out;
	  attrs_ok = true;
	  seen_type = true;
	  t = FUNC9 (parser);
	  FUNC14 (specs, t);
	  break;
	case RID_TYPEOF:
	  /* ??? The old parser rejected typeof after other type
	     specifiers, but is a syntax error the best way of
	     handling this?  */
	  if (!typespec_ok || seen_type)
	    goto out;
	  attrs_ok = true;
	  seen_type = true;
	  t = FUNC10 (parser);
	  FUNC14 (specs, t);
	  break;
	case RID_CONST:
	case RID_VOLATILE:
	case RID_RESTRICT:
	  attrs_ok = true;
	  FUNC12 (specs, FUNC8 (parser)->value);
	  FUNC3 (parser);
	  break;
	case RID_ATTRIBUTE:
	  if (!attrs_ok)
	    goto out;
	  attrs = FUNC2 (parser);
	  FUNC11 (specs, attrs);
	  break;
	default:
	  goto out;
	}
    }
 out: ;
}