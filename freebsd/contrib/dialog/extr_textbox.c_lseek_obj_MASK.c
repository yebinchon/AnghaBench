#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  off_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
#define  SEEK_CUR 130 
#define  SEEK_END 129 
#define  SEEK_SET 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static long
FUNC2(MY_OBJ * obj, long offset, int mode)
{
    long fpos;
    if ((fpos = (long) FUNC1(obj->fd, (off_t) offset, mode)) == -1) {
	switch (mode) {
	default:
	case SEEK_CUR:
	    FUNC0("Cannot get file position");
	    break;
	case SEEK_END:
	    FUNC0("Cannot seek to end of file");
	    break;
	case SEEK_SET:
	    FUNC0("Cannot set file position to %ld", offset);
	    break;
	}
    }
    return fpos;
}