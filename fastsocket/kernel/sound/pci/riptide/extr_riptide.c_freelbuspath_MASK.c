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
struct cmdif {int dummy; } ;

/* Variables and functions */
 unsigned char E2SINK_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct cmdif*,unsigned char,unsigned char) ; 
 unsigned char SPLIT_PATH ; 
 unsigned char** lbusin2out ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned char) ; 

__attribute__((used)) static void
FUNC2(struct cmdif *cif, unsigned char source, unsigned char *path)
{
	while (*path != 0xff) {
		unsigned char sink;

		sink = *path & (~SPLIT_PATH);
		if (sink != E2SINK_MAX) {
			FUNC1("free path 0x%x->0x%x\n", source, sink);
			FUNC0(cif, source, sink);
			source = lbusin2out[sink][0];
		}
		if (*path++ & SPLIT_PATH) {
			unsigned char *npath = path;

			while (*npath != 0xff)
				npath++;
			FUNC2(cif, source + 1, ++npath);
		}
	}
}