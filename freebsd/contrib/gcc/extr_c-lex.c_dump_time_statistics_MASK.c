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
struct c_fileinfo {int time; } ;

/* Variables and functions */
 int body_time ; 
 int /*<<< orphan*/  dump_one_header ; 
 int /*<<< orphan*/  file_info_tree ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct c_fileinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int header_time ; 
 int /*<<< orphan*/  input_filename ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC5 (void)
{
  struct c_fileinfo *file = FUNC1 (input_filename);
  int this_time = FUNC2 ();
  file->time += this_time - body_time;

  FUNC0 (stderr, "\n******\n");
  FUNC3 ("header files (total)", header_time);
  FUNC3 ("main file (total)", this_time - body_time);
  FUNC0 (stderr, "ratio = %g : 1\n",
	   (double) header_time / (double) (this_time - body_time));
  FUNC0 (stderr, "\n******\n");

  FUNC4 (file_info_tree, dump_one_header, 0);
}