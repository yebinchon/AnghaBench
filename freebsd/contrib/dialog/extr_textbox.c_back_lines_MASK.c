#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t in_buf; long fd_bytes_read; char* buf; void* begin_reached; int /*<<< orphan*/  end_reached; } ;
typedef  TYPE_1__ MY_OBJ ;

/* Variables and functions */
 int BUF_SIZE ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 long FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 void* FUNC5 (TYPE_1__*,long,long*) ; 

__attribute__((used)) static void
FUNC6(MY_OBJ * obj, long n)
{
    int i;
    long fpos;
    long val_to_tabize;

    obj->begin_reached = FALSE;
    /* We have to distinguish between end_reached and !end_reached since at end
       * of file, the line is not ended by a '\n'.  The code inside 'if'
       * basically does a '--in_buf' to move one character backward so as to
       * skip '\n' of the previous line */
    if (!obj->end_reached) {
	/* Either beginning of buffer or beginning of file reached? */

	if (obj->in_buf == 0) {
	    fpos = FUNC1(obj);

	    if (fpos > obj->fd_bytes_read) {	/* Not beginning of file yet */
		/* We've reached beginning of buffer, but not beginning of file
		 * yet, so read previous part of file into buffer.  Note that
		 * we only move backward for BUF_SIZE/2 bytes, but not BUF_SIZE
		 * bytes to avoid re-reading again in print_page() later
		 */
		/* Really possible to move backward BUF_SIZE/2 bytes? */
		if (fpos < BUF_SIZE / 2 + obj->fd_bytes_read) {
		    /* No, move less than */
		    FUNC3(obj, 0L);
		    val_to_tabize = fpos - obj->fd_bytes_read;
		} else {	/* Move backward BUF_SIZE/2 bytes */
		    FUNC2(obj, -(BUF_SIZE / 2 + obj->fd_bytes_read));
		    val_to_tabize = BUF_SIZE / 2;
		}
		FUNC4(obj, BUF_SIZE);

		obj->in_buf = FUNC5(obj, val_to_tabize, (long *) 0);

	    } else {		/* Beginning of file reached */
		obj->begin_reached = TRUE;
		return;
	    }
	}
	obj->in_buf--;
	if (obj->buf[obj->in_buf] != '\n')
	    /* Something's wrong... */
	    FUNC0("Internal error in back_lines().");
    }

    /* Go back 'n' lines */
    for (i = 0; i < n; i++) {
	do {
	    if (obj->in_buf == 0) {
		fpos = FUNC1(obj);

		if (fpos > obj->fd_bytes_read) {
		    /* Really possible to move backward BUF_SIZE/2 bytes? */
		    if (fpos < BUF_SIZE / 2 + obj->fd_bytes_read) {
			/* No, move less than */
			FUNC3(obj, 0L);
			val_to_tabize = fpos - obj->fd_bytes_read;
		    } else {	/* Move backward BUF_SIZE/2 bytes */
			FUNC2(obj, -(BUF_SIZE / 2 + obj->fd_bytes_read));
			val_to_tabize = BUF_SIZE / 2;
		    }
		    FUNC4(obj, BUF_SIZE);

		    obj->in_buf = FUNC5(obj, val_to_tabize, (long *) 0);

		} else {	/* Beginning of file reached */
		    obj->begin_reached = TRUE;
		    return;
		}
	    }
	} while (obj->buf[--(obj->in_buf)] != '\n');
    }
    obj->in_buf++;
}