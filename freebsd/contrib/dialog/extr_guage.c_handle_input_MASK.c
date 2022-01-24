#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pipe_input; } ;
struct TYPE_5__ {char* prompt_buf; char* prompt; void* percent; } ;
typedef  TYPE_1__ MY_OBJ ;
typedef  int /*<<< orphan*/  DIALOG_CALLBACK ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FALSE ; 
 int /*<<< orphan*/  MY_LEN ; 
 int TRUE ; 
 void* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_3__ dialog_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int FUNC8 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 

__attribute__((used)) static bool
FUNC13(DIALOG_CALLBACK * cb)
{
    MY_OBJ *obj = (MY_OBJ *) cb;
    bool result;
    bool cleanup = FALSE;
    int status;
    char buf[MY_LEN + 1];

    if (dialog_state.pipe_input == 0) {
	status = -1;
	cleanup = TRUE;
    } else if ((status = FUNC8(buf, dialog_state.pipe_input)) > 0) {

	if (FUNC7(buf)) {
	    /*
	     * Historically, next line should be percentage, but one of the
	     * worse-written clones of 'dialog' assumes the number is missing.
	     * (Gresham's Law applied to software).
	     */
	    if ((status = FUNC8(buf, dialog_state.pipe_input)) > 0) {

		obj->prompt_buf[0] = '\0';
		if (FUNC1(buf))
		    obj->percent = FUNC0(buf);
		else
		    FUNC11(obj->prompt_buf, buf);

		/* Rest is message text */
		while ((status = FUNC8(buf, dialog_state.pipe_input)) > 0
		       && !FUNC7(buf)) {
		    if (FUNC12(obj->prompt_buf) + FUNC12(buf) <
			sizeof(obj->prompt_buf) - 1) {
			FUNC10(obj->prompt_buf, buf);
		    }
		}

		if (obj->prompt != obj->prompt_buf)
		    FUNC6(obj->prompt);
		obj->prompt = obj->prompt_buf;
	    }
	} else if (FUNC1(buf)) {
	    obj->percent = FUNC0(buf);
	}
    } else {
	if (FUNC4(dialog_state.pipe_input) ||
	    (FUNC5(dialog_state.pipe_input) && errno != EINTR)) {
	    cleanup = TRUE;
	}
    }

    FUNC9(obj);
    if (status > 0) {
	result = TRUE;
    } else {
	result = FALSE;
	if (cleanup) {
	    FUNC3(cb);
	    FUNC2(obj);
	}
    }

    return result;
}