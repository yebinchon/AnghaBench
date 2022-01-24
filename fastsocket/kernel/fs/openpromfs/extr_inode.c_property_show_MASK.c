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
struct seq_file {struct property* private; } ;
struct property {int length; void* value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int FUNC2 (void*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *f, void *v)
{
	struct property *prop = f->private;
	void *pval;
	int len;

	len = prop->length;
	pval = prop->value;

	if (FUNC0(pval, len)) {
		while (len > 0) {
			int n = FUNC2(pval);

			FUNC1(f, "%s", (char *) pval);

			/* Skip over the NULL byte too.  */
			pval += n + 1;
			len -= n + 1;

			if (len > 0)
				FUNC1(f, " + ");
		}
	} else {
		if (len & 3) {
			while (len) {
				len--;
				if (len)
					FUNC1(f, "%02x.",
						   *(unsigned char *) pval);
				else
					FUNC1(f, "%02x",
						   *(unsigned char *) pval);
				pval++;
			}
		} else {
			while (len >= 4) {
				len -= 4;

				if (len)
					FUNC1(f, "%08x.",
						   *(unsigned int *) pval);
				else
					FUNC1(f, "%08x",
						   *(unsigned int *) pval);
				pval += 4;
			}
		}
	}
	FUNC1(f, "\n");

	return 0;
}