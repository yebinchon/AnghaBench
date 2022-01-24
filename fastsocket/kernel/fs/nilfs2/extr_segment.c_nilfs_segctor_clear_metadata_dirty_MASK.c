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
struct the_nilfs {int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; } ;
struct nilfs_sc_info {struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int /*<<< orphan*/  s_ifile; struct the_nilfs* s_nilfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nilfs_sc_info *sci)
{
	struct nilfs_sb_info *sbi = sci->sc_sbi;
	struct the_nilfs *nilfs = sbi->s_nilfs;

	FUNC1(sbi->s_ifile);
	FUNC1(nilfs->ns_cpfile);
	FUNC1(nilfs->ns_sufile);
	FUNC1(FUNC0(nilfs));
}