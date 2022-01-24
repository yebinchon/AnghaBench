#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
struct TYPE_4__ {TYPE_1__* tls_sec; } ;
struct TYPE_3__ {int /*<<< orphan*/  vma; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct bfd_link_info*) ; 

__attribute__((used)) static bfd_vma
FUNC1 (struct bfd_link_info *info)
{
  /* If tls_sec is NULL, we should have signalled an error already.  */
  if (FUNC0 (info)->tls_sec == NULL)
    return 0;
  return FUNC0 (info)->tls_sec->vma;
}