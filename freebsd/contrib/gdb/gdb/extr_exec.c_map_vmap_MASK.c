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
struct vmap_and_bfd {struct vmap* pvmap; int /*<<< orphan*/ * pbfd; } ;
struct vmap {char* name; char* member; struct vmap* nxt; int /*<<< orphan*/ * bfd; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vmap_and_bfd*) ; 
 int /*<<< orphan*/  bfdsec_to_vmap ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 struct vmap* vmap ; 
 scalar_t__ FUNC3 (int) ; 

struct vmap *
FUNC4 (bfd *abfd, bfd *arch)
{
  struct vmap_and_bfd vmap_bfd;
  struct vmap *vp, **vpp;

  vp = (struct vmap *) FUNC3 (sizeof (*vp));
  FUNC2 ((char *) vp, '\0', sizeof (*vp));
  vp->nxt = 0;
  vp->bfd = abfd;
  vp->name = FUNC0 (arch ? arch : abfd);
  vp->member = arch ? FUNC0 (abfd) : "";

  vmap_bfd.pbfd = arch;
  vmap_bfd.pvmap = vp;
  FUNC1 (abfd, bfdsec_to_vmap, &vmap_bfd);

  /* Find the end of the list and append. */
  for (vpp = &vmap; *vpp; vpp = &(*vpp)->nxt)
    ;
  *vpp = vp;

  return vp;
}