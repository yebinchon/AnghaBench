#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* bsym; } ;
typedef  TYPE_2__ symbolS ;
struct local_symbol {int dummy; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_LOCAL ; 
 int BSF_SECTION_SYM ; 
 int BSF_WEAK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 char* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* an_external_name ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,unsigned int*) ; 
 TYPE_2__* FUNC5 (struct local_symbol*) ; 

void
FUNC6 (symbolS *s)
{
  if (FUNC0 (s))
    s = FUNC5 ((struct local_symbol *) s);
  if ((s->bsym->flags & BSF_WEAK) != 0)
    {
      /* Let .weak override .global.  */
      return;
    }
  if (s->bsym->flags & BSF_SECTION_SYM)
    {
      char * file;
      unsigned int line;

      /* Do not reassign section symbols.  */
      FUNC4 (& file, & line);
      FUNC3 (file, line,
		     FUNC2("section symbols are already global"));
      return;
    }
  s->bsym->flags |= BSF_GLOBAL;
  s->bsym->flags &= ~(BSF_LOCAL | BSF_WEAK);

#ifdef USE_UNIQUE
  if (! an_external_name && S_GET_NAME(s)[0] != '.')
    an_external_name = S_GET_NAME (s);
#endif
}