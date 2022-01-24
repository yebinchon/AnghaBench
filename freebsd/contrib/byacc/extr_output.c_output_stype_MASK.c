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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ntags ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  unionized ; 

__attribute__((used)) static void
FUNC2(FILE * fp)
{
    if (!unionized && ntags == 0)
    {
	FUNC0(fp, '\n');
	FUNC1(fp, "#if "
		  "! defined(YYSTYPE) && "
		  "! defined(YYSTYPE_IS_DECLARED)\n");
	FUNC1(fp, "/* Default: YYSTYPE is the semantic value type. */\n");
	FUNC1(fp, "typedef int YYSTYPE;\n");
	FUNC1(fp, "# define YYSTYPE_IS_DECLARED 1\n");
	FUNC1(fp, "#endif\n");
    }
}