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
struct s390_address {scalar_t__ base; scalar_t__ indx; scalar_t__ disp; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct s390_address*) ; 

void
FUNC7 (FILE *file, rtx addr)
{
  struct s390_address ad;

  if (!FUNC6 (addr, &ad)
      || (ad.base && !FUNC1 (FUNC0 (ad.base)))
      || (ad.indx && !FUNC2 (FUNC0 (ad.indx))))
    FUNC5 ("cannot decompose address");

  if (ad.disp)
    FUNC4 (file, ad.disp);
  else
    FUNC3 (file, "0");

  if (ad.base && ad.indx)
    FUNC3 (file, "(%s,%s)", reg_names[FUNC0 (ad.indx)],
                              reg_names[FUNC0 (ad.base)]);
  else if (ad.base)
    FUNC3 (file, "(%s)", reg_names[FUNC0 (ad.base)]);
}