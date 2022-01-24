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
struct mem_attrib {int hwbreak; int cache; int verify; int /*<<< orphan*/  width; int /*<<< orphan*/  mode; } ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RO ; 
 int /*<<< orphan*/  MEM_RW ; 
 int /*<<< orphan*/  MEM_WIDTH_16 ; 
 int /*<<< orphan*/  MEM_WIDTH_32 ; 
 int /*<<< orphan*/  MEM_WIDTH_64 ; 
 int /*<<< orphan*/  MEM_WIDTH_8 ; 
 int /*<<< orphan*/  MEM_WO ; 
 int /*<<< orphan*/  FUNC0 (int,int,struct mem_attrib*) ; 
 struct mem_attrib default_mem_attrib ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6 (char *args, int from_tty)
{
  CORE_ADDR lo, hi;
  char *tok;
  struct mem_attrib attrib;

  if (!args)
    FUNC2 ("No mem");

  tok = FUNC5 (args, " \t");
  if (!tok)
    FUNC1 ("no lo address");
  lo = FUNC3 (tok);

  tok = FUNC5 (NULL, " \t");
  if (!tok)
    FUNC1 ("no hi address");
  hi = FUNC3 (tok);

  attrib = default_mem_attrib;
  while ((tok = FUNC5 (NULL, " \t")) != NULL)
    {
      if (FUNC4 (tok, "rw") == 0)
	attrib.mode = MEM_RW;
      else if (FUNC4 (tok, "ro") == 0)
	attrib.mode = MEM_RO;
      else if (FUNC4 (tok, "wo") == 0)
	attrib.mode = MEM_WO;

      else if (FUNC4 (tok, "8") == 0)
	attrib.width = MEM_WIDTH_8;
      else if (FUNC4 (tok, "16") == 0)
	{
	  if ((lo % 2 != 0) || (hi % 2 != 0))
	    FUNC1 ("region bounds not 16 bit aligned");
	  attrib.width = MEM_WIDTH_16;
	}
      else if (FUNC4 (tok, "32") == 0)
	{
	  if ((lo % 4 != 0) || (hi % 4 != 0))
	    FUNC1 ("region bounds not 32 bit aligned");
	  attrib.width = MEM_WIDTH_32;
	}
      else if (FUNC4 (tok, "64") == 0)
	{
	  if ((lo % 8 != 0) || (hi % 8 != 0))
	    FUNC1 ("region bounds not 64 bit aligned");
	  attrib.width = MEM_WIDTH_64;
	}

#if 0
      else if (strcmp (tok, "hwbreak") == 0)
	attrib.hwbreak = 1;
      else if (strcmp (tok, "swbreak") == 0)
	attrib.hwbreak = 0;
#endif

      else if (FUNC4 (tok, "cache") == 0)
	attrib.cache = 1;
      else if (FUNC4 (tok, "nocache") == 0)
	attrib.cache = 0;

#if 0
      else if (strcmp (tok, "verify") == 0)
	attrib.verify = 1;
      else if (strcmp (tok, "noverify") == 0)
	attrib.verify = 0;
#endif

      else
	FUNC1 ("unknown attribute: %s", tok);
    }

  FUNC0 (lo, hi, &attrib);
}