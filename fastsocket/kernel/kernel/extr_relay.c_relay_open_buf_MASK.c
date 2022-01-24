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
struct rchan_buf {unsigned int cpu; } ;
struct rchan {struct rchan_buf** buf; scalar_t__ is_global; scalar_t__ has_base_filename; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rchan_buf*,int) ; 
 struct rchan_buf* FUNC1 (struct rchan*) ; 
 struct dentry* FUNC2 (struct rchan*,struct rchan_buf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rchan_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct rchan_buf*,struct dentry*) ; 

__attribute__((used)) static struct rchan_buf *FUNC5(struct rchan *chan, unsigned int cpu)
{
 	struct rchan_buf *buf = NULL;
	struct dentry *dentry;

 	if (chan->is_global)
		return chan->buf[0];

	buf = FUNC1(chan);
	if (!buf)
		return NULL;

	if (chan->has_base_filename) {
		dentry = FUNC2(chan, buf, cpu);
		if (!dentry)
			goto free_buf;
		FUNC4(buf, dentry);
	}

 	buf->cpu = cpu;
 	FUNC0(buf, 1);

 	if(chan->is_global) {
 		chan->buf[0] = buf;
 		buf->cpu = 0;
  	}

	return buf;

free_buf:
 	FUNC3(buf);
	return NULL;
}