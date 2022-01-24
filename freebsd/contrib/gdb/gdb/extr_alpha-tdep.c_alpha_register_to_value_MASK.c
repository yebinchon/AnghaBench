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
 int MAX_REGISTER_SIZE ; 
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int) ; 

__attribute__((used)) static void
FUNC5 (struct frame_info *frame, int regnum,
			 struct type *valtype, void *out)
{
  char in[MAX_REGISTER_SIZE];
  FUNC3 (frame, regnum, in);
  switch (FUNC0 (valtype))
    {
    case 4:
      FUNC1 (out, in);
      break;
    case 8:
      FUNC4 (out, in, 8);
      break;
    default:
      FUNC2 ("Cannot retrieve value from floating point register");
    }
}