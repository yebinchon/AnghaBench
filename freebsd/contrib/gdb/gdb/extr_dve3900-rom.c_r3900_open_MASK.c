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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ethernet ; 
 int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  r3900_cmds ; 
 char** r3900_inits ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6 (char *args, int from_tty)
{
  char buf[64];
  int i;

  FUNC2 (args, &r3900_cmds, from_tty);

  /* We have to handle sending the init strings ourselves, because
     the first two strings we send (carriage returns) may not be echoed
     by the monitor, but the rest will be.  */
  FUNC4 ("\r\r");
  for (i = 0; r3900_inits[i] != NULL; i++)
    {
      FUNC3 (r3900_inits[i]);
      FUNC1 (NULL, 0);
    }

  /* Attempt to determine whether the console device is ethernet or serial.
     This will tell us which kind of load to use (S-records over a serial
     link, or the Densan fast binary multi-section format over the net).  */

  ethernet = 0;
  FUNC3 ("v\r");
  if (FUNC0 ("console device :", NULL, 0) != -1)
    if (FUNC0 ("\n", buf, sizeof (buf)) != -1)
      if (FUNC5 (buf, "ethernet") != NULL)
	ethernet = 1;
  FUNC1 (NULL, 0);
}