#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* name; int /*<<< orphan*/  type; int /*<<< orphan*/  blocks; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  Linux ; 
 int MAX_DEV_NAME ; 
 size_t MAX_PARTS ; 
 int /*<<< orphan*/  MsDos ; 
 int /*<<< orphan*/  Swap ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  num_linux ; 
 int /*<<< orphan*/  num_msdos ; 
 size_t num_partition ; 
 int /*<<< orphan*/  num_swap ; 
 TYPE_1__* partitions ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(void)
{
    FILE *f;
    char line[200];
    int length;
#ifndef DEBUG_THIS
    int ret = FUNC9("fdisk -l 2>/dev/null 1>/tmp/fdisk.output");
    if ((ret >> 8) != 0) {
	FUNC1("fdisk didn't run");
    }
    if ((f = FUNC3("/tmp/fdisk.output", "r")) == NULL)
#else
    if ((f = fopen("FDISK.TEST", "r")) == NULL)
#endif
	FUNC1("cannot read fdisk output");

    while (num_partition <= MAX_PARTS
	   && (length = FUNC4(line, 200, f)) >= 0) {
	if (FUNC7(line, "/dev/", 5) == 0) {
	    int n = 0;
	    char *s = line + 5;
	    char *t = partitions[num_partition].name;
	    FUNC6(t, "/dev/");
	    t += 5;
	    while (n < MAX_DEV_NAME && *s != '\0'
		   && !FUNC5((unsigned char) *s)) {
		*t++ = *s++;
		n++;
	    }
	    *t = '\0';
	    /* Read the size of the partition. */
	    t = line + 37;
	    while (FUNC5((unsigned char) *t))
		t++;
	    partitions[num_partition].blocks = FUNC0(t);
	    if (FUNC8(line, "Linux native")) {
		partitions[num_partition].type = Linux;
		num_partition++;
		num_linux++;
	    } else if (FUNC8(line, "Linux swap")) {
		partitions[num_partition].type = Swap;
		num_partition++;
		num_swap++;
	    } else if (FUNC8(line, "DOS")) {
		partitions[num_partition].type = MsDos;
		num_partition++;
		num_msdos++;
	    }
	}
    }
    FUNC2(f);
#ifndef DEBUG_THIS
    FUNC10("/tmp/fdisk.output");
#endif
}