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
 int PROP_DEATH_NOTES ; 
 int PROP_REG_INFO ; 
 int /*<<< orphan*/  UPDATE_LIFE_LOCAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC3 (void)
{
  FUNC0 ();
  /* distribute_notes in combiner fails to convert some of the
     REG_UNUSED notes to REG_DEAD notes.  This causes CHECK_DEAD_NOTES
     in sched1 to die.  To solve this update the DEATH_NOTES
     here.  */
  FUNC2 (NULL, UPDATE_LIFE_LOCAL, PROP_REG_INFO | PROP_DEATH_NOTES);

  if (dump_file)
    FUNC1 (dump_file, dump_flags);
  return 0;
}