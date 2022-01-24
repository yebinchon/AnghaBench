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
struct c_fileinfo {int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int body_time ; 
 scalar_t__ flag_detailed_statistics ; 
 struct c_fileinfo* FUNC0 (char const*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  header_time ; 

__attribute__((used)) static void
FUNC2 (const char *name)
{
  /* Changing files again.  This means currently collected time
     is charged against header time, and body time starts back at 0.  */
  if (flag_detailed_statistics)
    {
      int this_time = FUNC1 ();
      struct c_fileinfo *file = FUNC0 (name);
      header_time += this_time - body_time;
      file->time += this_time - body_time;
      body_time = this_time;
    }
}