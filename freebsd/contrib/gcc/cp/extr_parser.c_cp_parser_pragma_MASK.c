#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  enum pragma_context { ____Placeholder_pragma_context } pragma_context ;
struct TYPE_18__ {scalar_t__ type; unsigned int pragma_kind; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_19__ {TYPE_16__* lexer; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_17__ {int in_pragma; } ;

/* Variables and functions */
 scalar_t__ CPP_PRAGMA ; 
 unsigned int PRAGMA_FIRST_EXTERNAL ; 
#define  PRAGMA_GCC_PCH_PREPROCESS 142 
#define  PRAGMA_OMP_ATOMIC 141 
#define  PRAGMA_OMP_BARRIER 140 
#define  PRAGMA_OMP_CRITICAL 139 
#define  PRAGMA_OMP_FLUSH 138 
#define  PRAGMA_OMP_FOR 137 
#define  PRAGMA_OMP_MASTER 136 
#define  PRAGMA_OMP_ORDERED 135 
#define  PRAGMA_OMP_PARALLEL 134 
#define  PRAGMA_OMP_SECTION 133 
#define  PRAGMA_OMP_SECTIONS 132 
#define  PRAGMA_OMP_SINGLE 131 
#define  PRAGMA_OMP_THREADPRIVATE 130 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 TYPE_1__* FUNC1 (TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
#define  pragma_compound 129 
 int pragma_external ; 
#define  pragma_stmt 128 

__attribute__((used)) static bool
FUNC10 (cp_parser *parser, enum pragma_context context)
{
  cp_token *pragma_tok;
  unsigned int id;

  pragma_tok = FUNC1 (parser->lexer);
  FUNC9 (pragma_tok->type == CPP_PRAGMA);
  parser->lexer->in_pragma = true;

  id = pragma_tok->pragma_kind;
  switch (id)
    {
    case PRAGMA_GCC_PCH_PREPROCESS:
      FUNC8 ("%<#pragma GCC pch_preprocess%> must be first");
      break;

    case PRAGMA_OMP_BARRIER:
      switch (context)
	{
	case pragma_compound:
	  FUNC3 (parser, pragma_tok);
	  return false;
	case pragma_stmt:
	  FUNC8 ("%<#pragma omp barrier%> may only be "
		 "used in compound statements");
	  break;
	default:
	  goto bad_stmt;
	}
      break;

    case PRAGMA_OMP_FLUSH:
      switch (context)
	{
	case pragma_compound:
	  FUNC5 (parser, pragma_tok);
	  return false;
	case pragma_stmt:
	  FUNC8 ("%<#pragma omp flush%> may only be "
		 "used in compound statements");
	  break;
	default:
	  goto bad_stmt;
	}
      break;

    case PRAGMA_OMP_THREADPRIVATE:
      FUNC6 (parser, pragma_tok);
      return false;

    case PRAGMA_OMP_ATOMIC:
    case PRAGMA_OMP_CRITICAL:
    case PRAGMA_OMP_FOR:
    case PRAGMA_OMP_MASTER:
    case PRAGMA_OMP_ORDERED:
    case PRAGMA_OMP_PARALLEL:
    case PRAGMA_OMP_SECTIONS:
    case PRAGMA_OMP_SINGLE:
      if (context == pragma_external)
	goto bad_stmt;
      FUNC4 (parser, pragma_tok);
      return true;

    case PRAGMA_OMP_SECTION:
      FUNC8 ("%<#pragma omp section%> may only be used in "
	     "%<#pragma omp sections%> construct");
      break;

    default:
      FUNC9 (id >= PRAGMA_FIRST_EXTERNAL);
      FUNC0 (id);
      break;

    bad_stmt:
      FUNC2 (parser, "expected declaration specifiers");
      break;
    }

  FUNC7 (parser, pragma_tok);
  return false;
}