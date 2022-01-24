#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* voidp ;
struct TYPE_7__ {scalar_t__ fs_refc; int fs_flags; struct TYPE_7__* fs_host; struct TYPE_7__* fs_ip; scalar_t__ fs_private; int /*<<< orphan*/  (* fs_prfree ) (scalar_t__) ;int /*<<< orphan*/  fs_q; } ;
typedef  TYPE_1__ fserver ;

/* Variables and functions */
 int FSF_WANT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(voidp v)
{
  fserver *fs = v;

  /*
   * If the reference count is still zero then
   * we are free to remove this node
   */
  if (fs->fs_refc == 0) {
    FUNC1("Deleting file server %s", fs->fs_host);
    if (fs->fs_flags & FSF_WANT)
      FUNC4(fs);

    /*
     * Remove from queue.
     */
    FUNC2(&fs->fs_q);
    /*
     * (Possibly) call the private free routine.
     */
    if (fs->fs_private && fs->fs_prfree)
      (*fs->fs_prfree) (fs->fs_private);

    /*
     * Free the net address
     */
    FUNC0(fs->fs_ip);

    /*
     * Free the host name.
     */
    FUNC0(fs->fs_host);

    /*
     * Discard the fserver object.
     */
    FUNC0(fs);
  }
}