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
struct dmabuf {size_t cnt_factor; scalar_t__ dmasize; int count; scalar_t__ nextIn; scalar_t__ rawbuf; int dma_qcount; int fragsize; scalar_t__ nextOut; int /*<<< orphan*/  wait; scalar_t__ dma_fragsize; int /*<<< orphan*/  total_bytes; int /*<<< orphan*/  dmanr; scalar_t__ mapped; } ;
struct au1550_state {int /*<<< orphan*/  sem; int /*<<< orphan*/  lock; struct dmabuf dma_dac; } ;
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
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (struct dmabuf*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct au1550_state*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t
FUNC17(struct file *file, const char *buffer, size_t count, loff_t * ppos)
{
	struct au1550_state *s = (struct au1550_state *)file->private_data;
	struct dmabuf  *db = &s->dma_dac;
	FUNC0(wait, current);
	ssize_t         ret = 0;
	unsigned long   flags;
	int             cnt, usercnt, avail;

	FUNC9("write: count=%d\n", count);

	if (db->mapped)
		return -ENXIO;
	if (!FUNC2(VERIFY_READ, buffer, count))
		return -EFAULT;

	count *= db->cnt_factor;

	FUNC7(&s->sem);
	FUNC3(&db->wait, &wait);

	while (count > 0) {
		/* wait for space in playback buffer
		*/
		do {
			FUNC14(&s->lock, flags);
			avail = (int) db->dmasize - db->count;
			if (avail <= 0)
				FUNC1(TASK_INTERRUPTIBLE);
			FUNC15(&s->lock, flags);
			if (avail <= 0) {
				if (file->f_flags & O_NONBLOCK) {
					if (!ret)
						ret = -EAGAIN;
					goto out;
				}
				FUNC8(&s->sem);
				FUNC11();
				if (FUNC13(current)) {
					if (!ret)
						ret = -ERESTARTSYS;
					goto out2;
				}
				FUNC7(&s->sem);
			}
		} while (avail <= 0);

		/* copy from user to nextIn
		*/
		if ((cnt = FUNC5(db, (char *) buffer,
					    count > avail ?
					    avail : count, 0)) < 0) {
			if (!ret)
				ret = -EFAULT;
			goto out;
		}

		FUNC14(&s->lock, flags);
		db->count += cnt;
		db->nextIn += cnt;
		if (db->nextIn >= db->rawbuf + db->dmasize)
			db->nextIn -= db->dmasize;

		/* If the data is available, we want to keep two buffers
		 * on the dma queue.  If the queue count reaches zero,
		 * we know the dma has stopped.
		 */
		while ((db->dma_qcount < 2) && (db->count >= db->fragsize)) {
			if (FUNC4(db->dmanr, db->nextOut,
							db->fragsize) == 0) {
				FUNC6("qcount < 2 and no ring room!");
			}
			db->nextOut += db->fragsize;
			if (db->nextOut >= db->rawbuf + db->dmasize)
				db->nextOut -= db->dmasize;
			db->total_bytes += db->dma_fragsize;
			if (db->dma_qcount == 0)
				FUNC16(s);
			db->dma_qcount++;
		}
		FUNC15(&s->lock, flags);

		count -= cnt;
		usercnt = cnt / db->cnt_factor;
		buffer += usercnt;
		ret += usercnt;
	}			/* while (count > 0) */

out:
	FUNC8(&s->sem);
out2:
	FUNC10(&db->wait, &wait);
	FUNC12(TASK_RUNNING);
	return ret;
}