#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ps_b; } ;
struct TYPE_8__ {int pb_align; size_t pb_size; int /*<<< orphan*/ * pb_buf; scalar_t__ pb_off; } ;
struct TYPE_9__ {TYPE_1__ sb_pb; int /*<<< orphan*/  sb_flags; TYPE_3__* sb_ps; } ;
typedef  TYPE_2__ PE_SecBuf ;
typedef  TYPE_3__ PE_Scn ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  LIBPE_F_BUFFER_MALLOCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  sb_next ; 

PE_SecBuf *
FUNC3(PE_Scn *ps, size_t sz)
{
	PE_SecBuf *sb;

	if ((sb = FUNC2(sizeof(PE_SecBuf))) == NULL) {
		errno = ENOMEM;
		return (NULL);
	}

	sb->sb_ps = ps;
	sb->sb_flags = 0;
	sb->sb_pb.pb_align = 1;
	sb->sb_pb.pb_off = 0;
	sb->sb_pb.pb_size = sz;
	if (sz > 0) {
		if ((sb->sb_pb.pb_buf = FUNC2(sz)) == NULL) {
			FUNC1(sb);
			errno = ENOMEM;
			return (NULL);
		}
		sb->sb_flags |= LIBPE_F_BUFFER_MALLOCED;
	} else
		sb->sb_pb.pb_buf = NULL;

	FUNC0(&ps->ps_b, sb, sb_next);

	return (sb);
}