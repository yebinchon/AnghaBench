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
 int /*<<< orphan*/  builtin_type_ia64_ext ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,void*,struct type*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int,char*) ; 

__attribute__((used)) static void
FUNC2 (struct frame_info *frame, int regnum,
                         struct type *valtype, void *out)
{
  char in[MAX_REGISTER_SIZE];
  FUNC1 (frame, regnum, in);
  FUNC0 (in, builtin_type_ia64_ext, out, valtype);
}