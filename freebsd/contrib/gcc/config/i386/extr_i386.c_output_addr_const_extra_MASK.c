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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ UNSPEC ; 
#define  UNSPEC_DTPOFF 133 
#define  UNSPEC_GOTNTPOFF 132 
#define  UNSPEC_GOTTPOFF 131 
#define  UNSPEC_INDNTPOFF 130 
#define  UNSPEC_NTPOFF 129 
#define  UNSPEC_TPOFF 128 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC5 (FILE *file, rtx x)
{
  rtx op;

  if (FUNC0 (x) != UNSPEC)
    return false;

  op = FUNC2 (x, 0, 0);
  switch (FUNC1 (x, 1))
    {
    case UNSPEC_GOTTPOFF:
      FUNC4 (file, op);
      /* FIXME: This might be @TPOFF in Sun ld.  */
      FUNC3 ("@GOTTPOFF", file);
      break;
    case UNSPEC_TPOFF:
      FUNC4 (file, op);
      FUNC3 ("@TPOFF", file);
      break;
    case UNSPEC_NTPOFF:
      FUNC4 (file, op);
      if (TARGET_64BIT)
	FUNC3 ("@TPOFF", file);
      else
	FUNC3 ("@NTPOFF", file);
      break;
    case UNSPEC_DTPOFF:
      FUNC4 (file, op);
      FUNC3 ("@DTPOFF", file);
      break;
    case UNSPEC_GOTNTPOFF:
      FUNC4 (file, op);
      if (TARGET_64BIT)
	FUNC3 ("@GOTTPOFF(%rip)", file);
      else
	FUNC3 ("@GOTNTPOFF", file);
      break;
    case UNSPEC_INDNTPOFF:
      FUNC4 (file, op);
      FUNC3 ("@INDNTPOFF", file);
      break;

    default:
      return false;
    }

  return true;
}