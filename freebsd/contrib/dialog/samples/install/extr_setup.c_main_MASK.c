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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char*,char*,int,int,int,int,char**) ; 
 int FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ num_linux ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(int argc, char **argv)
{
    int stop = 0;
    int ret;
    char *items1[] =
    {
	"1", "Display a help text",
	"2", "Start an installation",
	"3", "Exit to the shell"
    };

    progname = argv[0];

    FUNC8();
    if (num_linux == 0) {
	FUNC7("\n\nPlease start \"fdisk\" or \"cfdisk\" and create a"
	       "\nnative Linux-partition to install Linux on.\n\n");
	FUNC4(1);
    }

    FUNC5();

    while (!stop) {
	ret = FUNC1("Linux Install Utility",
			  "\\nCopyright (C) 1995 Florian La Roche\\n"
			  "\\nPre-Alpha version, be careful, read the doc!!!"
			  "\\nemail: florian@jurix.jura.uni-sb.de, "
			  "flla@stud.uni-sb.de\\n",
			  15, 64, 3, 3, items1);
	FUNC0();
	switch (ret) {
	case 0:
	    ret = FUNC2("Help Text",
				 "setup.help", 20, 70);
	    FUNC0();
	    break;
	case 1:
	    FUNC6();
	    break;
	case 2:
	    stop = 1;
	    break;
	case -2:		/* cancel */
	case -1:
	    stop = 1;		/* esc */
	}
    }
    FUNC3();
    FUNC7("\nExecute \"reboot\" to restart your computer...\n");

    FUNC4(0);
}