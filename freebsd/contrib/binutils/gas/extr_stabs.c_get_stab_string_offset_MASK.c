#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subsegT ;
typedef  TYPE_2__* segT ;
struct TYPE_9__ {unsigned int stab_string_size; } ;
struct TYPE_11__ {TYPE_1__ stabu; } ;
struct TYPE_10__ {char const* name; } ;

/* Variables and functions */
 int SEC_DEBUGGING ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  SEPARATE_STAB_SECTIONS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 char* FUNC2 (unsigned int) ; 
 TYPE_2__* now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 TYPE_5__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 unsigned int FUNC5 (char const*) ; 
 TYPE_2__* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (char const*) ; 

unsigned int
FUNC9 (const char *string, const char *stabstr_secname)
{
  unsigned int length;
  unsigned int retval;
  segT save_seg;
  subsegT save_subseg;
  segT seg;
  char *p;

  if (! SEPARATE_STAB_SECTIONS)
    FUNC0 ();

  length = FUNC5 (string);

  save_seg = now_seg;
  save_subseg = now_subseg;

  /* Create the stab string section.  */
  seg = FUNC6 (stabstr_secname, 0);

  retval = FUNC3 (seg)->stabu.stab_string_size;
  if (retval <= 0)
    {
      /* Make sure the first string is empty.  */
      p = FUNC2 (1);
      *p = 0;
      retval = FUNC3 (seg)->stabu.stab_string_size = 1;
      FUNC1 (stdoutput, seg, SEC_READONLY | SEC_DEBUGGING);
      if (seg->name == stabstr_secname)
	seg->name = FUNC8 (stabstr_secname);
    }

  if (length > 0)
    {				/* Ordinary case.  */
      p = FUNC2 (length + 1);
      FUNC4 (p, string);

      FUNC3 (seg)->stabu.stab_string_size += length + 1;
    }
  else
    retval = 0;

  FUNC7 (save_seg, save_subseg);

  return retval;
}