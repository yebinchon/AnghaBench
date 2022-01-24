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
struct file {int f_flags; scalar_t__ private_data; } ;
struct dmabuf {size_t cnt_factor; int count; scalar_t__ nextOut; scalar_t__ rawbuf; scalar_t__ dmasize; int /*<<< orphan*/  wait; scalar_t__ stopped; scalar_t__ mapped; } ;
struct au1550_state {int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; struct dmabuf dma_adc; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EFAULT ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dmabuf*,char*,int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct au1550_state*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t
FUNC14(struct file *file, char *buffer, size_t count, loff_t *ppos)
{
	struct au1550_state *s = (struct au1550_state *)file->private_data;
	struct dmabuf  *db = &s->dma_adc;
	FUNC0(wait, current);
	ssize_t         ret;
	unsigned long   flags;
	int             cnt, usercnt, avail;

	if (db->mapped)
		return -ENXIO;
	if (!FUNC2(VERIFY_WRITE, buffer, count))
		return -EFAULT;
	ret = 0;

	count *= db->cnt_factor;

	FUNC5(&s->sem);
	FUNC3(&db->wait, &wait);

	while (count > 0) {
		/* wait for samples in ADC dma buffer
		*/
		do {
			FUNC11(&s->lock, flags);
			if (db->stopped)
				FUNC13(s);
			avail = db->count;
			if (avail <= 0)
				FUNC1(TASK_INTERRUPTIBLE);
			FUNC12(&s->lock, flags);
			if (avail <= 0) {
				if (file->f_flags & O_NONBLOCK) {
					if (!ret)
						ret = -EAGAIN;
					goto out;
				}
				FUNC6(&s->sem);
				FUNC8();
				if (FUNC10(current)) {
					if (!ret)
						ret = -ERESTARTSYS;
					goto out2;
				}
				FUNC5(&s->sem);
			}
		} while (avail <= 0);

		/* copy from nextOut to user
		*/
		if ((cnt = FUNC4(db, buffer,
					    count > avail ?
					    avail : count, 1)) < 0) {
			if (!ret)
				ret = -EFAULT;
			goto out;
		}

		FUNC11(&s->lock, flags);
		db->count -= cnt;
		db->nextOut += cnt;
		if (db->nextOut >= db->rawbuf + db->dmasize)
			db->nextOut -= db->dmasize;
		FUNC12(&s->lock, flags);

		count -= cnt;
		usercnt = cnt / db->cnt_factor;
		buffer += usercnt;
		ret += usercnt;
	}			/* while (count > 0) */

out:
	FUNC6(&s->sem);
out2:
	FUNC7(&db->wait, &wait);
	FUNC9(TASK_RUNNING);
	return ret;
}