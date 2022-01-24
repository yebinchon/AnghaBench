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
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  arelent ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,long) ; 
 int /*<<< orphan*/  dynsyms ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ ** FUNC7 (long) ; 

__attribute__((used)) static void
FUNC8 (bfd *abfd)
{
  long relsize;
  arelent **relpp;
  long relcount;

  relsize = FUNC2 (abfd);
  if (relsize < 0)
    FUNC1 (FUNC3 (abfd));

  FUNC6 ("DYNAMIC RELOCATION RECORDS");

  if (relsize == 0)
    FUNC6 (" (none)\n\n");
  else
    {
      relpp = FUNC7 (relsize);
      relcount = FUNC0 (abfd, relpp, dynsyms);

      if (relcount < 0)
	FUNC1 (FUNC3 (abfd));
      else if (relcount == 0)
	FUNC6 (" (none)\n\n");
      else
	{
	  FUNC6 ("\n");
	  FUNC4 (abfd, NULL, relpp, relcount);
	  FUNC6 ("\n\n");
	}
      FUNC5 (relpp);
    }
}