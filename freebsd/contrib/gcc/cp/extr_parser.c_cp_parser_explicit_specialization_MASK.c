#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_8__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  num_template_parameter_lists; int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
struct TYPE_10__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_GREATER ; 
 scalar_t__ CPP_LESS ; 
 int /*<<< orphan*/  RID_TEMPLATE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 scalar_t__ current_lang_name ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ lang_name_c ; 
 int /*<<< orphan*/  lang_name_cplusplus ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12 (cp_parser* parser)
{
  bool need_lang_pop;
  /* Look for the `template' keyword.  */
  FUNC4 (parser, RID_TEMPLATE, "`template'");
  /* Look for the `<'.  */
  FUNC3 (parser, CPP_LESS, "`<'");
  /* Look for the `>'.  */
  FUNC3 (parser, CPP_GREATER, "`>'");
  /* We have processed another parameter list.  */
  ++parser->num_template_parameter_lists;
  /* [temp]

     A template ... explicit specialization ... shall not have C
     linkage.  */
  if (current_lang_name == lang_name_c)
    {
      FUNC9 ("template specialization with C linkage");
      /* Give it C++ linkage to avoid confusing other parts of the
	 front end.  */
      FUNC11 (lang_name_cplusplus);
      need_lang_pop = true;
    }
  else
    need_lang_pop = false;
  /* Let the front end know that we are beginning a specialization.  */
  if (!FUNC0 ())
    {
      FUNC8 ();
      FUNC6 (parser);
      return;
    }

  /* If the next keyword is `template', we need to figure out whether
     or not we're looking a template-declaration.  */
  if (FUNC1 (parser->lexer, RID_TEMPLATE))
    {
      if (FUNC2 (parser->lexer, 2)->type == CPP_LESS
	  && FUNC2 (parser->lexer, 3)->type != CPP_GREATER)
	FUNC7 (parser,
						     /*member_p=*/false);
      else
	FUNC12 (parser);
    }
  else
    /* Parse the dependent declaration.  */
    FUNC5 (parser,
				  /*checks=*/NULL,
				  /*member_p=*/false,
				  /*friend_p=*/NULL);
  /* We're done with the specialization.  */
  FUNC8 ();
  /* For the erroneous case of a template with C linkage, we pushed an
     implicit C++ linkage scope; exit that scope now.  */
  if (need_lang_pop)
    FUNC10 ();
  /* We're done with this parameter list.  */
  --parser->num_template_parameter_lists;
}