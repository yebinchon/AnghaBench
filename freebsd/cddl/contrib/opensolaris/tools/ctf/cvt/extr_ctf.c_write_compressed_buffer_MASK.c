#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {size_t rb_base; size_t rb_ptr; int /*<<< orphan*/  rb_size; } ;
typedef  TYPE_1__ resbuf_t ;
typedef  int /*<<< orphan*/  ctf_header_t ;
struct TYPE_11__ {int /*<<< orphan*/  ctb_strtab; scalar_t__ ctb_base; scalar_t__ ctb_ptr; } ;
typedef  TYPE_2__ ctf_buf_t ;
typedef  size_t caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  RES_BUF_CHUNK_SIZE ; 
 int /*<<< orphan*/  Z_FULL_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (scalar_t__,scalar_t__,TYPE_1__*),TYPE_1__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static caddr_t
FUNC7(ctf_header_t *h, ctf_buf_t *buf, size_t *resszp)
{
	resbuf_t resbuf;
	resbuf.rb_size = RES_BUF_CHUNK_SIZE;
	resbuf.rb_base = FUNC6(resbuf.rb_size);
	FUNC0(h, resbuf.rb_base, sizeof (ctf_header_t));
	resbuf.rb_ptr = resbuf.rb_base + sizeof (ctf_header_t);

	FUNC4(&resbuf);
	(void) FUNC1(buf->ctb_base, buf->ctb_ptr - buf->ctb_base,
	    &resbuf);
	FUNC3(&resbuf, Z_FULL_FLUSH);
	(void) FUNC5(&buf->ctb_strtab, compress_buffer, &resbuf);
	FUNC2(&resbuf);

	*resszp = (resbuf.rb_ptr - resbuf.rb_base);
	return (resbuf.rb_base);
}