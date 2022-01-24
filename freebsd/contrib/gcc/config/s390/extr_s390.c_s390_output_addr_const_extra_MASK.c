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
 scalar_t__ UNSPEC ; 
#define  UNSPEC_DTPOFF 138 
#define  UNSPEC_GOT 137 
#define  UNSPEC_GOTENT 136 
#define  UNSPEC_GOTNTPOFF 135 
#define  UNSPEC_GOTOFF 134 
#define  UNSPEC_INDNTPOFF 133 
#define  UNSPEC_NTPOFF 132 
#define  UNSPEC_PLT 131 
#define  UNSPEC_PLTOFF 130 
#define  UNSPEC_TLSGD 129 
#define  UNSPEC_TLSLDM 128 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC8 (FILE *file, rtx x)
{
  if (FUNC0 (x) == UNSPEC && FUNC3 (x, 0) == 1)
    switch (FUNC1 (x, 1))
      {
      case UNSPEC_GOTENT:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@GOTENT");
	return true;
      case UNSPEC_GOT:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@GOT");
	return true;
      case UNSPEC_GOTOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@GOTOFF");
	return true;
      case UNSPEC_PLT:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@PLT");
	return true;
      case UNSPEC_PLTOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@PLTOFF");
	return true;
      case UNSPEC_TLSGD:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@TLSGD");
	return true;
      case UNSPEC_TLSLDM:
	FUNC4 (file, FUNC6 ());
	FUNC5 (file, "@TLSLDM");
	return true;
      case UNSPEC_DTPOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@DTPOFF");
	return true;
      case UNSPEC_NTPOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@NTPOFF");
	return true;
      case UNSPEC_GOTNTPOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@GOTNTPOFF");
	return true;
      case UNSPEC_INDNTPOFF:
	FUNC7 (file, FUNC2 (x, 0, 0));
	FUNC5 (file, "@INDNTPOFF");
	return true;
      }

  return false;
}