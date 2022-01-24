#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_6__ {int flags; } ;
typedef  TYPE_1__ asymbol ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ add_stdcall_alias ; 
 char* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char const*,char) ; 
 char* FUNC8 (char const*) ; 

__attribute__((used)) static void
FUNC9 (bfd *abfd, void *minisyms, long symcount,
		       unsigned int size)
{
  asymbol *store;
  bfd_byte *from, *fromend;

  store = FUNC4 (abfd);
  if (store == NULL)
    FUNC1 (FUNC2 (abfd));

  from = (bfd_byte *) minisyms;
  fromend = from + symcount * size;
  for (; from < fromend; from += size)
    {
      asymbol *sym;
      const char *symbol_name;

      sym = FUNC5 (abfd, FALSE, from, store);
      if (sym == NULL)
	FUNC1 (FUNC2 (abfd));

      symbol_name = FUNC0 (sym);
      if (FUNC3 (abfd) == symbol_name[0])
	++symbol_name;

      FUNC6 (FUNC8 (symbol_name) , 0, -1, 0, 0,
		   ! (sym->flags & BSF_FUNCTION), 0);

      if (add_stdcall_alias && FUNC7 (symbol_name, '@'))
        {
	  int lead_at = (*symbol_name == '@');
	  char *exported_name = FUNC8 (symbol_name + lead_at);
	  char *atsym = FUNC7 (exported_name, '@');
	  *atsym = '\0';
	  /* Note: stdcall alias symbols can never be data.  */
	  FUNC6 (exported_name, FUNC8 (symbol_name), -1, 0, 0, 0, 0);
	}
    }
}