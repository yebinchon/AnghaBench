#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int red; unsigned int green; unsigned int blue; } ;

/* Variables and functions */
 unsigned int MAX_LINUX_LOGO_COLORS ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__* logo_clut ; 
 unsigned int logo_clutsize ; 
 TYPE_1__** logo_data ; 
 unsigned int logo_height ; 
 unsigned int logo_width ; 
 char* logoname ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 scalar_t__ write_hex_cnt ; 

__attribute__((used)) static void FUNC7(void)
{
    unsigned int i, j, k;

    /* validate image */
    for (i = 0; i < logo_height; i++)
	for (j = 0; j < logo_width; j++) {
	    for (k = 0; k < logo_clutsize; k++)
		if (FUNC3(logo_data[i][j], logo_clut[k]))
		    break;
	    if (k == logo_clutsize) {
		if (logo_clutsize == MAX_LINUX_LOGO_COLORS)
		    FUNC0("Image has more than %d colors\n"
			"Use ppmquant(1) to reduce the number of colors\n",
			MAX_LINUX_LOGO_COLORS);
		logo_clut[logo_clutsize++] = logo_data[i][j];
	    }
	}

    /* write file header */
    FUNC5();

    /* write logo data */
    for (i = 0; i < logo_height; i++)
	for (j = 0; j < logo_width; j++) {
	    for (k = 0; k < logo_clutsize; k++)
		if (FUNC3(logo_data[i][j], logo_clut[k]))
		    break;
	    FUNC6(k+32);
	}
    FUNC2("\n};\n\n", out);

    /* write logo clut */
    FUNC1(out, "static unsigned char %s_clut[] __initdata = {\n",
	    logoname);
    write_hex_cnt = 0;
    for (i = 0; i < logo_clutsize; i++) {
	FUNC6(logo_clut[i].red);
	FUNC6(logo_clut[i].green);
	FUNC6(logo_clut[i].blue);
    }

    /* write logo structure and file footer */
    FUNC4();
}