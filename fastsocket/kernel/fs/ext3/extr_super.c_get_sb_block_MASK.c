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
struct super_block {int dummy; } ;
typedef  int ext3_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ext3_fsblk_t FUNC3(void **data, struct super_block *sb)
{
	ext3_fsblk_t	sb_block;
	char		*options = (char *) *data;

	if (!options || FUNC2(options, "sb=", 3) != 0)
		return 1;	/* Default location */
	options += 3;
	/*todo: use simple_strtoll with >32bit ext3 */
	sb_block = FUNC1(options, &options, 0);
	if (*options && *options != ',') {
		FUNC0(sb, KERN_ERR, "error: invalid sb specification: %s",
		       (char *) *data);
		return 1;
	}
	if (*options == ',')
		options++;
	*data = (void *) options;
	return sb_block;
}