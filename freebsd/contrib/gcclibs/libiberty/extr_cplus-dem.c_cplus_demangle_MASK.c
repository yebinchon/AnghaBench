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
typedef  int /*<<< orphan*/  work ;
struct work_stuff {int options; } ;

/* Variables and functions */
 scalar_t__ AUTO_DEMANGLING ; 
 int DMGL_STYLE_MASK ; 
 scalar_t__ GNAT_DEMANGLING ; 
 scalar_t__ GNU_V3_DEMANGLING ; 
 scalar_t__ JAVA_DEMANGLING ; 
 char* FUNC0 (char const*,int) ; 
 char* FUNC1 (char const*,int) ; 
 scalar_t__ current_demangling_style ; 
 char* FUNC2 (struct work_stuff*,char const*) ; 
 char* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ no_demangling ; 
 int /*<<< orphan*/  FUNC5 (struct work_stuff*) ; 
 char* FUNC6 (char const*) ; 

char *
FUNC7 (const char *mangled, int options)
{
  char *ret;
  struct work_stuff work[1];

  if (current_demangling_style == no_demangling)
    return FUNC6 (mangled);

  FUNC4 ((char *) work, 0, sizeof (work));
  work->options = options;
  if ((work->options & DMGL_STYLE_MASK) == 0)
    work->options |= (int) current_demangling_style & DMGL_STYLE_MASK;

  /* The V3 ABI demangling is implemented elsewhere.  */
  if (GNU_V3_DEMANGLING || AUTO_DEMANGLING)
    {
      ret = FUNC1 (mangled, work->options);
      if (ret || GNU_V3_DEMANGLING)
	return ret;
    }

  if (JAVA_DEMANGLING)
    {
      ret = FUNC3 (mangled);
      if (ret)
        return ret;
    }

  if (GNAT_DEMANGLING)
    return FUNC0(mangled,options);

  ret = FUNC2 (work, mangled);
  FUNC5 (work);
  return (ret);
}