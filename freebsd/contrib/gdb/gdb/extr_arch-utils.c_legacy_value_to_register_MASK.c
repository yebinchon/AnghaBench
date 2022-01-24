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
struct type {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int,char*,char*) ; 
 int MAX_REGISTER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct type*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int,char*) ; 

void
FUNC5 (struct frame_info *frame, int regnum,
			  struct type *type, const void *tmp)
{
  char to[MAX_REGISTER_SIZE];
  char *from = FUNC2 (FUNC1 (type));
  FUNC3 (from, from, FUNC1 (type));
  FUNC0 (type, regnum, from, to);
  FUNC4 (frame, regnum, to);
}