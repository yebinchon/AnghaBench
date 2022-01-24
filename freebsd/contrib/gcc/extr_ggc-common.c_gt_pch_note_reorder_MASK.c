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
struct ptr_data {void* note_ptr_cookie; int /*<<< orphan*/  reorder_fn; } ;
typedef  int /*<<< orphan*/  gt_handle_reorder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ptr_data* FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  saving_htab ; 

void
FUNC3 (void *obj, void *note_ptr_cookie,
		     gt_handle_reorder reorder_fn)
{
  struct ptr_data *data;

  if (obj == NULL || obj == (void *) 1)
    return;

  data = FUNC2 (saving_htab, obj, FUNC0 (obj));
  FUNC1 (data && data->note_ptr_cookie == note_ptr_cookie);

  data->reorder_fn = reorder_fn;
}