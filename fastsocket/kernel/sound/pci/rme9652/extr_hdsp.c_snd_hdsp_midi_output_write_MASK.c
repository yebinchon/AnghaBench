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
struct hdsp_midi {int /*<<< orphan*/  lock; int /*<<< orphan*/  id; int /*<<< orphan*/  hdsp; scalar_t__ output; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC2 (scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6 (struct hdsp_midi *hmidi)
{
	unsigned long flags;
	int n_pending;
	int to_write;
	int i;
	unsigned char buf[128];

	/* Output is not interrupt driven */

	FUNC4 (&hmidi->lock, flags);
	if (hmidi->output) {
		if (!FUNC3 (hmidi->output)) {
			if ((n_pending = FUNC0 (hmidi->hdsp, hmidi->id)) > 0) {
				if (n_pending > (int)sizeof (buf))
					n_pending = sizeof (buf);

				if ((to_write = FUNC2 (hmidi->output, buf, n_pending)) > 0) {
					for (i = 0; i < to_write; ++i)
						FUNC1 (hmidi->hdsp, hmidi->id, buf[i]);
				}
			}
		}
	}
	FUNC5 (&hmidi->lock, flags);
	return 0;
}