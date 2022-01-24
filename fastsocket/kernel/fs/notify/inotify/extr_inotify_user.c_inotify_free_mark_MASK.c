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
struct inotify_inode_mark_entry {int dummy; } ;
struct fsnotify_mark_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  inotify_inode_mark_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inotify_inode_mark_entry*) ; 

__attribute__((used)) static void FUNC1(struct fsnotify_mark_entry *entry)
{
	struct inotify_inode_mark_entry *ientry = (struct inotify_inode_mark_entry *)entry;

	FUNC0(inotify_inode_mark_cachep, ientry);
}