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
struct frame_info {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (scalar_t__,struct frame_info*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ DEPRECATED_USE_GENERIC_DUMMY_FRAMES ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9 (CORE_ADDR fp, struct frame_info *fi)
{
  /* Don't prune CALL_DUMMY frames.  */
  if (DEPRECATED_USE_GENERIC_DUMMY_FRAMES
      && FUNC2 (FUNC7 (fi), 0, 0))
    return 1;

  /* If the new frame pointer is zero, then it isn't valid.  */
  if (fp == 0)
    return 0;
  
  /* If the new frame would be inside (younger than) the previous frame,
     then it isn't valid.  */
  if (FUNC3 (fp, FUNC6 (fi)))
    return 0;
  
  /* If the architecture has a custom DEPRECATED_FRAME_CHAIN_VALID,
     call it now.  */
  if (FUNC1 ())
    return FUNC0 (fp, fi);

  /* If we're already inside the entry function for the main objfile, then it
     isn't valid.  */
  if (FUNC8 (FUNC7 (fi)))
    return 0;

  /* If we're inside the entry file, it isn't valid.  */
  /* NOTE/drow 2002-12-25: should there be a way to disable this check?  It
     assumes a single small entry file, and the way some debug readers (e.g.
     dbxread) figure out which object is the entry file is somewhat hokey.  */
  if (FUNC4 (FUNC5 (fi)))
      return 0;

  return 1;
}