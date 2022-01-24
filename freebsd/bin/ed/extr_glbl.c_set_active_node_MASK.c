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
typedef  int /*<<< orphan*/  line_t ;

/* Variables and functions */
 int ERR ; 
 int MINBUFSZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t active_last ; 
 int /*<<< orphan*/ ** active_list ; 
 size_t active_size ; 
 char* errmsg ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(line_t *lp)
{
	if (active_last + 1 > active_size) {
		size_t ti = active_size;
		line_t **ts;
		FUNC1();
#if defined(sun) || defined(NO_REALLOC_NULL)
		if (active_list != NULL) {
#endif
			if ((ts = (line_t **) FUNC4(active_list,
			    (ti += MINBUFSZ) * sizeof(line_t *))) == NULL) {
				FUNC2(stderr, "%s\n", FUNC5(errno));
				errmsg = "out of memory";
				FUNC0();
				return ERR;
			}
#if defined(sun) || defined(NO_REALLOC_NULL)
		} else {
			if ((ts = (line_t **) malloc((ti += MINBUFSZ) *
			    sizeof(line_t **))) == NULL) {
				fprintf(stderr, "%s\n", strerror(errno));
				errmsg = "out of memory";
				SPL0();
				return ERR;
			}
		}
#endif
		active_size = ti;
		active_list = ts;
		FUNC0();
	}
	active_list[active_last++] = lp;
	return 0;
}