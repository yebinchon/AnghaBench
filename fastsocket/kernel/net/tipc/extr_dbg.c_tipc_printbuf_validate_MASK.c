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
struct print_buf {scalar_t__* buf; int size; scalar_t__* crs; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct print_buf*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct print_buf*,struct print_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct print_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct print_buf*,char*) ; 

int FUNC8(struct print_buf *pb)
{
	char *err = "\n\n*** PRINT BUFFER OVERFLOW ***\n\n";
	char *cp_buf;
	struct print_buf cb;

	if (!pb->buf)
		return 0;

	if (pb->buf[pb->size - 1] == 0) {
		cp_buf = FUNC1(pb->size, GFP_ATOMIC);
		if (cp_buf) {
			FUNC4(&cb, cp_buf, pb->size);
			FUNC5(&cb, pb);
			FUNC5(pb, &cb);
			FUNC0(cp_buf);
			FUNC2(pb->buf, err, FUNC3(err));
		} else {
			FUNC6(pb);
			FUNC7(pb, err);
		}
	}
	return (pb->crs - pb->buf + 1);
}