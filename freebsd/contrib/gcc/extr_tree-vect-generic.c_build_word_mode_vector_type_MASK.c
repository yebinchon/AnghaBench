#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {scalar_t__ (* type_for_mode ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ vector_inner_type ; 
 int vector_last_nunits ; 
 int /*<<< orphan*/  vector_last_type ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static tree
FUNC5 (int nunits)
{
  if (!vector_inner_type)
    vector_inner_type = lang_hooks.types.type_for_mode (word_mode, 1);
  else if (vector_last_nunits == nunits)
    {
      FUNC2 (FUNC0 (vector_last_type) == VECTOR_TYPE);
      return vector_last_type;
    }

  /* We build a new type, but we canonicalize it nevertheless,
     because it still saves some memory.  */
  vector_last_nunits = nunits;
  vector_last_type = FUNC4 (nunits,
				      FUNC1 (vector_inner_type,
							 nunits));
  return vector_last_type;
}