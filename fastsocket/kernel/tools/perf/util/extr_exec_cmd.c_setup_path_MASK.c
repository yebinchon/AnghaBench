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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  argv0_path ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 

void FUNC6(void)
{
	const char *old_path = FUNC1("PATH");
	struct strbuf new_path = STRBUF_INIT;

	FUNC0(&new_path, FUNC2());
	FUNC0(&new_path, argv0_path);

	if (old_path)
		FUNC4(&new_path, old_path);
	else
		FUNC4(&new_path, "/usr/local/bin:/usr/bin:/bin");

	FUNC3("PATH", new_path.buf, 1);

	FUNC5(&new_path);
}