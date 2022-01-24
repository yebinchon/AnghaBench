#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  char uchar ;
struct fun_macro {int* args; TYPE_9__* node; } ;
struct block {size_t text_len; size_t arg_index; int text; } ;
struct TYPE_15__ {int base; } ;
struct TYPE_17__ {TYPE_4__* context; TYPE_3__ out; } ;
typedef  TYPE_5__ cpp_reader ;
struct TYPE_14__ {char* text; } ;
struct TYPE_18__ {scalar_t__ paramc; TYPE_2__ exp; } ;
typedef  TYPE_6__ cpp_macro ;
typedef  int /*<<< orphan*/  _cpp_buff ;
struct TYPE_13__ {TYPE_6__* macro; } ;
struct TYPE_19__ {TYPE_1__ value; } ;
struct TYPE_16__ {int /*<<< orphan*/ * buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_5__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_9__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_9__*) ; 

__attribute__((used)) static void
FUNC6 (cpp_reader *pfile, struct fun_macro *fmacro)
{
  cpp_macro *macro = fmacro->node->value.macro;

  if (macro->paramc == 0)
    FUNC5 (pfile, fmacro->node);
  else
    {
      const uchar *exp;
      uchar *p;
      _cpp_buff *buff;
      size_t len = 0;

      /* Calculate the length of the argument-replaced text.  */
      for (exp = macro->exp.text;;)
	{
	  struct block *b = (struct block *) exp;

	  len += b->text_len;
	  if (b->arg_index == 0)
	    break;
	  len += (fmacro->args[b->arg_index]
		  - fmacro->args[b->arg_index - 1] - 1);
	  exp += FUNC0 (b->text_len);
	}

      /* Allocate room for the expansion plus \n.  */
      buff = FUNC2 (pfile, len + 1);

      /* Copy the expansion and replace arguments.  */
      p = FUNC1 (buff);
      for (exp = macro->exp.text;;)
	{
	  struct block *b = (struct block *) exp;
	  size_t arglen;

	  FUNC4 (p, b->text, b->text_len);
	  p += b->text_len;
	  if (b->arg_index == 0)
	    break;
	  arglen = (fmacro->args[b->arg_index]
		    - fmacro->args[b->arg_index - 1] - 1);
	  FUNC4 (p, pfile->out.base + fmacro->args[b->arg_index - 1],
		  arglen);
	  p += arglen;
	  exp += FUNC0 (b->text_len);
	}

      /* \n-terminate.  */
      *p = '\n';
      FUNC3 (pfile, fmacro->node, FUNC1 (buff), len);

      /* So we free buffer allocation when macro is left.  */
      pfile->context->buff = buff;
    }
}