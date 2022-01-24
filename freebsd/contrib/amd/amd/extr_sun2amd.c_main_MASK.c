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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5(int argc, char **argv)
{
  /* default in/out to stdin/stdout */
  FILE *sun_in = stdin, *amd_out = stdout;
  int opt, retval = 1;

  while ((opt = FUNC1(argc, argv , "i:o:hH")) != -1) {
    switch (opt) {

    case 'i':
      if ((sun_in = FUNC3(optarg,"r")) == NULL) {
	goto err;
      }
      break;

    case 'o':
      if ((amd_out = FUNC3(optarg,"w")) == NULL) {
	goto err;
      }
      break;

    case 'h':
    case 'H':
      FUNC4();
      goto err;
    }
  }

  retval = FUNC2(sun_in,amd_out);

 err:
  FUNC0(retval);
}