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
typedef  enum ocd_target_type { ____Placeholder_ocd_target_type } ocd_target_type ;

/* Variables and functions */
 int /*<<< orphan*/  OCD_AYT ; 
 int OCD_FLAG_BDM ; 
 int /*<<< orphan*/  OCD_GET_VERSION ; 
 unsigned char OCD_INIT ; 
 unsigned char OCD_LOG_FILE ; 
 unsigned char OCD_SET_CTL_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  immediate_quit ; 
 int /*<<< orphan*/  ocd_desc ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 unsigned char* FUNC5 (unsigned char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  remote_timeout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_pc ; 

__attribute__((used)) static int
FUNC13 (void *dummy)
{
  unsigned char buf[10], *p;
  int pktlen;
  int status;
  int error_code;
  int speed;
  enum ocd_target_type target_type;

  target_type = *(enum ocd_target_type *) dummy;

  immediate_quit++;		/* Allow user to interrupt it */

  FUNC12 (ocd_desc);	/* Wake up the wiggler */

  speed = 80;			/* Divide clock by 4000 */

  buf[0] = OCD_INIT;
  buf[1] = speed >> 8;
  buf[2] = speed & 0xff;
  buf[3] = target_type;
  FUNC6 (buf, 4);	/* Init OCD params */
  p = FUNC5 (buf[0], &pktlen, remote_timeout);

  if (pktlen < 2)
    FUNC0 ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    FUNC4 ("OCD_INIT:", error_code);

  FUNC3 (OCD_AYT, &status, &pktlen);

  p = FUNC3 (OCD_GET_VERSION, &status, &pktlen);

  FUNC9 ("[Wiggler version %x.%x, capability 0x%x]\n",
		     p[0], p[1], (p[2] << 16) | p[3]);

  /* If processor is still running, stop it.  */

  if (!(status & OCD_FLAG_BDM))
    FUNC7 ();

  /* When using a target box, we want to asynchronously return status when
     target stops.  The OCD_SET_CTL_FLAGS command is ignored by Wigglers.dll
     when using a parallel Wiggler */
  buf[0] = OCD_SET_CTL_FLAGS;
  buf[1] = 0;
  buf[2] = 1;
  FUNC6 (buf, 3);

  p = FUNC5 (buf[0], &pktlen, remote_timeout);

  if (pktlen < 2)
    FUNC0 ("Truncated response packet from OCD device");

  status = p[1];
  error_code = p[2];

  if (error_code != 0)
    FUNC4 ("OCD_SET_CTL_FLAGS:", error_code);

  immediate_quit--;

/* This is really the job of start_remote however, that makes an assumption
   that the target is about to print out a status message of some sort.  That
   doesn't happen here (in fact, it may not be possible to get the monitor to
   send the appropriate packet).  */

  FUNC1 ();
  FUNC11 ();
  stop_pc = FUNC10 ();
  FUNC8 (FUNC2 (), -1, 1);

  buf[0] = OCD_LOG_FILE;
  buf[1] = 3;			/* close existing WIGGLERS.LOG */
  FUNC6 (buf, 2);
  p = FUNC5 (buf[0], &pktlen, remote_timeout);

  buf[0] = OCD_LOG_FILE;
  buf[1] = 2;			/* append to existing WIGGLERS.LOG */
  FUNC6 (buf, 2);
  p = FUNC5 (buf[0], &pktlen, remote_timeout);

  return 1;
}