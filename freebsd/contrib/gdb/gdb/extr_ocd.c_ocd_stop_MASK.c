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

/* Variables and functions */
 int OCD_FLAG_BDM ; 
 int /*<<< orphan*/  OCD_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 

void
FUNC2 (void)
{
  int status;
  int pktlen;

  FUNC1 (OCD_STOP, &status, &pktlen);

  if (!(status & OCD_FLAG_BDM))
    FUNC0 ("Can't stop target via BDM");
}