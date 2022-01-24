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
struct tty_struct {struct acm* driver_data; } ;
struct acm_wb {int len; int /*<<< orphan*/  buf; } ;
struct acm {int writesize; int /*<<< orphan*/  write_lock; struct acm_wb* wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int EINVAL ; 
 int FUNC1 (struct acm*) ; 
 int FUNC2 (struct acm*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty,
					const unsigned char *buf, int count)
{
	struct acm *acm = tty->driver_data;
	int stat;
	unsigned long flags;
	int wbn;
	struct acm_wb *wb;

	FUNC3("Entering acm_tty_write to write %d bytes,", count);

	if (!FUNC0(acm))
		return -EINVAL;
	if (!count)
		return 0;

	FUNC5(&acm->write_lock, flags);
	wbn = FUNC1(acm);
	if (wbn < 0) {
		FUNC6(&acm->write_lock, flags);
		return 0;
	}
	wb = &acm->wb[wbn];

	count = (count > acm->writesize) ? acm->writesize : count;
	FUNC3("Get %d bytes...", count);
	FUNC4(wb->buf, buf, count);
	wb->len = count;
	FUNC6(&acm->write_lock, flags);

	stat = FUNC2(acm, wbn);
	if (stat < 0)
		return stat;
	return count;
}