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
struct core_fns {scalar_t__ (* core_sniffer ) (struct core_fns*,int /*<<< orphan*/ *) ;struct core_fns* next; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct core_fns* core_file_fns ; 
 scalar_t__ core_gdbarch ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct core_fns*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static struct core_fns *
FUNC4 (bfd *abfd)
{
  struct core_fns *cf;
  struct core_fns *yummy = NULL;
  int matches = 0;;

  /* Don't sniff if we have support for register sets in CORE_GDBARCH.  */
  if (core_gdbarch && FUNC1 (core_gdbarch))
    return NULL;

  for (cf = core_file_fns; cf != NULL; cf = cf->next)
    {
      if (cf->core_sniffer (cf, abfd))
	{
	  yummy = cf;
	  matches++;
	}
    }
  if (matches > 1)
    {
      FUNC3 ("\"%s\": ambiguous core format, %d handlers match",
	       FUNC0 (abfd), matches);
    }
  else if (matches == 0)
    {
      FUNC3 ("\"%s\": no core file handler recognizes format, using default",
	       FUNC0 (abfd));
    }
  if (yummy == NULL)
    {
      yummy = core_file_fns;
    }
  return (yummy);
}