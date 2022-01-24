#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {char* (* strip_name_encoding ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  SYMBOL_REF_FLAGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCT_NORMAL ; 
 scalar_t__ NO_PROFILE_COUNTERS ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SYMBOL_FLAG_LOCAL ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_1__ targetm ; 

void
FUNC11 (int labelno)
{
  rtx label, ip;

  if (NO_PROFILE_COUNTERS)
    label = const0_rtx;
  else
    {
      char buf[30];
      const char *label_name;
      FUNC0 (buf, "LP", labelno);
      label_name = (*targetm.strip_name_encoding) (FUNC9 (buf));
      label = FUNC8 (Pmode, label_name);
      SYMBOL_REF_FLAGS (label) = SYMBOL_FLAG_LOCAL;
    }
  ip = FUNC6 (Pmode);
  FUNC2 (FUNC4 (ip));
  FUNC3 (FUNC5 (), LCT_NORMAL,
                     VOIDmode, 3,
		     FUNC7 (Pmode, FUNC1 (0)), Pmode,
		     ip, Pmode,
		     label, Pmode);
}