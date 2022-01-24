#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  TYPE_2__* convert_optab ;
struct TYPE_5__ {TYPE_1__** handlers; } ;
struct TYPE_4__ {int /*<<< orphan*/  libfunc; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 char const* FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t FUNC3 (size_t,size_t) ; 
 char FUNC4 (char const) ; 
 int VOIDmode ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,size_t) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static void
FUNC10 (convert_optab tab, const char *opname,
			       enum mode_class from_class,
			       enum mode_class to_class)
{
  enum machine_mode first_from_mode = FUNC0 (from_class);
  enum machine_mode first_to_mode = FUNC0 (to_class);
  size_t opname_len = FUNC9 (opname);
  size_t max_mname_len = 0;

  enum machine_mode fmode, tmode;
  const char *fname, *tname;
  const char *q;
  char *libfunc_name, *suffix;
  char *p;

  for (fmode = first_from_mode;
       fmode != VOIDmode;
       fmode = FUNC2 (fmode))
    max_mname_len = FUNC3 (max_mname_len, FUNC9 (FUNC1 (fmode)));

  for (tmode = first_to_mode;
       tmode != VOIDmode;
       tmode = FUNC2 (tmode))
    max_mname_len = FUNC3 (max_mname_len, FUNC9 (FUNC1 (tmode)));

  libfunc_name = FUNC5 (2 + opname_len + 2*max_mname_len + 1 + 1);
  libfunc_name[0] = '_';
  libfunc_name[1] = '_';
  FUNC8 (&libfunc_name[2], opname, opname_len);
  suffix = libfunc_name + opname_len + 2;

  for (fmode = first_from_mode; fmode != VOIDmode;
       fmode = FUNC2 (fmode))
    for (tmode = first_to_mode; tmode != VOIDmode;
	 tmode = FUNC2 (tmode))
      {
	fname = FUNC1 (fmode);
	tname = FUNC1 (tmode);

	p = suffix;
	for (q = fname; *q; p++, q++)
	  *p = FUNC4 (*q);
	for (q = tname; *q; p++, q++)
	  *p = FUNC4 (*q);

	*p = '\0';

	tab->handlers[tmode][fmode].libfunc
	  = FUNC7 (FUNC6 (libfunc_name,
						p - libfunc_name));
      }
}