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
struct ptr_data {scalar_t__ note_ptr_fn; void* note_ptr_cookie; int type; scalar_t__ size; void* obj; } ;
typedef  scalar_t__ gt_note_pointers ;
typedef  enum gt_types_enum { ____Placeholder_gt_types_enum } gt_types_enum ;

/* Variables and functions */
 int /*<<< orphan*/  INSERT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*) ; 
 scalar_t__ gt_pch_p_S ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saving_htab ; 
 scalar_t__ FUNC4 (void*) ; 
 struct ptr_data* FUNC5 (int,int) ; 

int
FUNC6 (void *obj, void *note_ptr_cookie,
		    gt_note_pointers note_ptr_fn,
		    enum gt_types_enum type)
{
  struct ptr_data **slot;

  if (obj == NULL || obj == (void *) 1)
    return 0;

  slot = (struct ptr_data **)
    FUNC3 (saving_htab, obj, FUNC0 (obj),
			      INSERT);
  if (*slot != NULL)
    {
      FUNC1 ((*slot)->note_ptr_fn == note_ptr_fn
		  && (*slot)->note_ptr_cookie == note_ptr_cookie);
      return 0;
    }

  *slot = FUNC5 (sizeof (struct ptr_data), 1);
  (*slot)->obj = obj;
  (*slot)->note_ptr_fn = note_ptr_fn;
  (*slot)->note_ptr_cookie = note_ptr_cookie;
  if (note_ptr_fn == gt_pch_p_S)
    (*slot)->size = FUNC4 (obj) + 1;
  else
    (*slot)->size = FUNC2 (obj);
  (*slot)->type = type;
  return 1;
}