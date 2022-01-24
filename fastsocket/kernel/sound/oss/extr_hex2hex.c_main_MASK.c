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
 int* buf ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5( int argc, const char * argv [] )
{
	const char * varline;
	int i,l;
	int id=0;

	if(argv[1] && FUNC4(argv[1], "-i")==0)
	{
		argv++;
		argc--;
		id=1;
	}
	if(argv[1]==NULL)
	{
		FUNC1(stderr,"hex2hex: [-i] filename\n");
		FUNC0(1);
	}
	varline = argv[1];
	l = FUNC2(stdin, buf);

	FUNC3("/*\n *\t Computer generated file. Do not edit.\n */\n");
        FUNC3("static int %s_len = %d;\n", varline, l);
	FUNC3("static unsigned char %s[] %s = {\n", varline, id?"__initdata":"");

	for (i=0;i<l;i++)
	{
		if (i) FUNC3(",");
		if (i && !(i % 16)) FUNC3("\n");
		FUNC3("0x%02x", buf[i]);
	}

	FUNC3("\n};\n\n");
	return 0;
}