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
struct ubifs_wbuf {scalar_t__ lnum; int offs; int used; int avail; void* buf; int (* sync_callback ) (struct ubifs_info*,scalar_t__,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; scalar_t__ next_ino; int /*<<< orphan*/  dtype; int /*<<< orphan*/  jhead; int /*<<< orphan*/  io_mutex; struct ubifs_info* c; } ;
struct ubifs_info {scalar_t__ leb_cnt; int min_io_size; int leb_size; int min_io_shift; int /*<<< orphan*/  ubi; scalar_t__ ro_media; } ;
struct ubifs_ch {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOSPC ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_wbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__,int,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,void*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_wbuf*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (struct ubifs_info*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__,void*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,scalar_t__,int,int) ; 

int FUNC17(struct ubifs_wbuf *wbuf, void *buf, int len)
{
	struct ubifs_info *c = wbuf->c;
	int err, written, n, aligned_len = FUNC0(len, 8), offs;

	FUNC5("%d bytes (%s) to jhead %s wbuf at LEB %d:%d", len,
	       FUNC7(((struct ubifs_ch *)buf)->node_type),
	       FUNC6(wbuf->jhead), wbuf->lnum, wbuf->offs + wbuf->used);
	FUNC15(len > 0 && wbuf->lnum >= 0 && wbuf->lnum < c->leb_cnt);
	FUNC15(wbuf->offs >= 0 && wbuf->offs % c->min_io_size == 0);
	FUNC15(!(wbuf->offs & 7) && wbuf->offs <= c->leb_size);
	FUNC15(wbuf->avail > 0 && wbuf->avail <= c->min_io_size);
	FUNC15(FUNC9(&wbuf->io_mutex));

	if (c->leb_size - wbuf->offs - wbuf->used < aligned_len) {
		err = -ENOSPC;
		goto out;
	}

	FUNC1(wbuf);

	if (c->ro_media)
		return -EROFS;

	if (aligned_len <= wbuf->avail) {
		/*
		 * The node is not very large and fits entirely within
		 * write-buffer.
		 */
		FUNC8(wbuf->buf + wbuf->used, buf, len);

		if (aligned_len == wbuf->avail) {
			FUNC5("flush jhead %s wbuf to LEB %d:%d",
			       FUNC6(wbuf->jhead), wbuf->lnum, wbuf->offs);
			err = FUNC14(c->ubi, wbuf->lnum, wbuf->buf,
					    wbuf->offs, c->min_io_size,
					    wbuf->dtype);
			if (err)
				goto out;

			FUNC11(&wbuf->lock);
			wbuf->offs += c->min_io_size;
			wbuf->avail = c->min_io_size;
			wbuf->used = 0;
			wbuf->next_ino = 0;
			FUNC12(&wbuf->lock);
		} else {
			FUNC11(&wbuf->lock);
			wbuf->avail -= aligned_len;
			wbuf->used += aligned_len;
			FUNC12(&wbuf->lock);
		}

		goto exit;
	}

	/*
	 * The node is large enough and does not fit entirely within current
	 * minimal I/O unit. We have to fill and flush write-buffer and switch
	 * to the next min. I/O unit.
	 */
	FUNC5("flush jhead %s wbuf to LEB %d:%d",
	       FUNC6(wbuf->jhead), wbuf->lnum, wbuf->offs);
	FUNC8(wbuf->buf + wbuf->used, buf, wbuf->avail);
	err = FUNC14(c->ubi, wbuf->lnum, wbuf->buf, wbuf->offs,
			    c->min_io_size, wbuf->dtype);
	if (err)
		goto out;

	offs = wbuf->offs + c->min_io_size;
	len -= wbuf->avail;
	aligned_len -= wbuf->avail;
	written = wbuf->avail;

	/*
	 * The remaining data may take more whole min. I/O units, so write the
	 * remains multiple to min. I/O unit size directly to the flash media.
	 * We align node length to 8-byte boundary because we anyway flash wbuf
	 * if the remaining space is less than 8 bytes.
	 */
	n = aligned_len >> c->min_io_shift;
	if (n) {
		n <<= c->min_io_shift;
		FUNC5("write %d bytes to LEB %d:%d", n, wbuf->lnum, offs);
		err = FUNC14(c->ubi, wbuf->lnum, buf + written, offs, n,
				    wbuf->dtype);
		if (err)
			goto out;
		offs += n;
		aligned_len -= n;
		len -= n;
		written += n;
	}

	FUNC11(&wbuf->lock);
	if (aligned_len)
		/*
		 * And now we have what's left and what does not take whole
		 * min. I/O unit, so write it to the write-buffer and we are
		 * done.
		 */
		FUNC8(wbuf->buf, buf + written, len);

	wbuf->offs = offs;
	wbuf->used = aligned_len;
	wbuf->avail = c->min_io_size - aligned_len;
	wbuf->next_ino = 0;
	FUNC12(&wbuf->lock);

exit:
	if (wbuf->sync_callback) {
		int free = c->leb_size - wbuf->offs - wbuf->used;

		err = wbuf->sync_callback(c, wbuf->lnum, free, 0);
		if (err)
			goto out;
	}

	if (wbuf->used)
		FUNC10(wbuf);

	return 0;

out:
	FUNC16("cannot write %d bytes to LEB %d:%d, error %d",
		  len, wbuf->lnum, wbuf->offs, err);
	FUNC3(c, buf);
	FUNC4();
	FUNC2(c, wbuf->lnum);
	return err;
}