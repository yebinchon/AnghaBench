#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  l3num; } ;
struct TYPE_6__ {TYPE_1__ src; } ;
struct TYPE_7__ {TYPE_2__ tuple; int /*<<< orphan*/ * me; } ;

/* Variables and functions */
 TYPE_3__** ftp ; 
 int /*<<< orphan*/  ftp_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/ * ports ; 
 int ports_c ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	int i, j;
	for (i = 0; i < ports_c; i++) {
		for (j = 0; j < 2; j++) {
			if (ftp[i][j].me == NULL)
				continue;

			FUNC2("nf_ct_ftp: unregistering helper for pf: %d "
				 "port: %d\n",
				 ftp[i][j].tuple.src.l3num, ports[i]);
			FUNC1(&ftp[i][j]);
		}
	}

	FUNC0(ftp_buffer);
}