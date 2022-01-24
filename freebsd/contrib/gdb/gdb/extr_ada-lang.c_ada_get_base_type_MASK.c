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

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 struct type* FUNC4 (struct type*,char*) ; 

struct type *
FUNC5 (struct type *raw_type)
{
  struct type *real_type_namer;
  struct type *raw_real_type;
  struct type *real_type;

  if (raw_type == NULL || FUNC0 (raw_type) != TYPE_CODE_STRUCT)
    return raw_type;

  real_type_namer = FUNC4 (raw_type, "___XVS");
  if (real_type_namer == NULL
      || FUNC0 (real_type_namer) != TYPE_CODE_STRUCT
      || FUNC2 (real_type_namer) != 1)
    return raw_type;

  raw_real_type = FUNC3 (FUNC1 (real_type_namer, 0));
  if (raw_real_type == NULL)
    return raw_type;
  else
    return raw_real_type;
}