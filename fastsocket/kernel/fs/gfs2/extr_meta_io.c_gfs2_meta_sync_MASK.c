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
struct gfs2_glock {int /*<<< orphan*/  gl_sbd; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC1 (struct address_space*) ; 
 struct address_space* FUNC2 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct gfs2_glock *gl)
{
	struct address_space *mapping = FUNC2(gl);
	int error;

	FUNC1(mapping);
	error = FUNC0(mapping);

	if (error)
		FUNC3(gl->gl_sbd);
}