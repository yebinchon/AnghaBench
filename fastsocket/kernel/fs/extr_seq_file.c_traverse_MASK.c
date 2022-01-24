#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {scalar_t__ count; scalar_t__ from; int size; void* buf; TYPE_1__* op; scalar_t__ index; scalar_t__ version; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int (* show ) (struct seq_file*,void*) ;int /*<<< orphan*/  (* stop ) (struct seq_file*,void*) ;void* (* next ) (struct seq_file*,void*,scalar_t__*) ;void* (* start ) (struct seq_file*,scalar_t__*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int PAGE_SIZE ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct seq_file*,scalar_t__*) ; 
 int FUNC5 (struct seq_file*,void*) ; 
 void* FUNC6 (struct seq_file*,void*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,void*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, loff_t offset)
{
	loff_t pos = 0, index;
	int error = 0;
	void *p;

	m->version = 0;
	index = 0;
	m->count = m->from = 0;
	if (!offset) {
		m->index = index;
		return 0;
	}
	if (!m->buf) {
		m->buf = FUNC3(m->size = PAGE_SIZE, GFP_KERNEL);
		if (!m->buf)
			return -ENOMEM;
	}
	p = m->op->start(m, &index);
	while (p) {
		error = FUNC1(p);
		if (FUNC0(p))
			break;
		error = m->op->show(m, p);
		if (error < 0)
			break;
		if (FUNC9(error)) {
			error = 0;
			m->count = 0;
		}
		if (m->count == m->size)
			goto Eoverflow;
		if (pos + m->count > offset) {
			m->from = offset - pos;
			m->count -= m->from;
			m->index = index;
			break;
		}
		pos += m->count;
		m->count = 0;
		if (pos == offset) {
			index++;
			m->index = index;
			break;
		}
		p = m->op->next(m, p, &index);
	}
	m->op->stop(m, p);
	m->index = index;
	return error;

Eoverflow:
	m->op->stop(m, p);
	FUNC2(m->buf);
	m->buf = FUNC3(m->size <<= 1, GFP_KERNEL);
	return !m->buf ? -ENOMEM : -EAGAIN;
}