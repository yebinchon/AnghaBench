#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int len; char* text; } ;
struct TYPE_12__ {TYPE_1__ str; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ val; } ;
typedef  TYPE_4__ cpp_token ;
struct TYPE_13__ {int /*<<< orphan*/  (* dir_change ) (TYPE_5__*,char*) ;} ;
struct TYPE_15__ {TYPE_3__ cb; } ;
typedef  TYPE_5__ cpp_reader ;

/* Variables and functions */
 scalar_t__ CPP_HASH ; 
 scalar_t__ CPP_NUMBER ; 
 scalar_t__ CPP_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 TYPE_4__* FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 

__attribute__((used)) static void
FUNC5 (cpp_reader *pfile)
{
  const cpp_token *hash, *token;

  /* Lex ahead; if the first tokens are of the form # NUM, then
     process the directive, otherwise back up.  */
  hash = FUNC1 (pfile);
  if (hash->type != CPP_HASH)
    {
      FUNC0 (pfile, 1);
      return;
    }

  token = FUNC1 (pfile);

  if (token->type != CPP_NUMBER)
    {
      FUNC0 (pfile, 2);
      return;
    }

  token = FUNC1 (pfile);

  if (token->type != CPP_STRING
      || ! (token->val.str.len >= 5
	    && token->val.str.text[token->val.str.len-2] == '/'
	    && token->val.str.text[token->val.str.len-3] == '/'))
    {
      FUNC0 (pfile, 3);
      return;
    }

  if (pfile->cb.dir_change)
    {
      char *debugdir = (char *) FUNC2 (token->val.str.len - 3);

      FUNC3 (debugdir, (const char *) token->val.str.text + 1,
	      token->val.str.len - 4);
      debugdir[token->val.str.len - 4] = '\0';

      pfile->cb.dir_change (pfile, debugdir);
    }      
}