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
 int /*<<< orphan*/  FUNC1 (char*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int,char*) ; 

__attribute__((used)) static void
FUNC5 (struct frame_info *frame, int regnum,
			 struct type *valtype, const void *in)
{
  char out[MAX_REGISTER_SIZE];
  switch (FUNC0 (valtype))
    {
    case 4:
      FUNC1 (out, in);
      break;
    case 8:
      FUNC3 (out, in, 8);
      break;
    default:
      FUNC2 ("Cannot store value in floating point register");
    }
  FUNC4 (frame, regnum, out);
}