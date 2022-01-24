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
struct areltdata {scalar_t__ arch_header; } ;
struct ar_hdr {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 struct areltdata* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

struct ar_hdr *
FUNC1 (bfd *abfd, const char *filename)
{
  struct areltdata *ar_elt = FUNC0 (abfd, filename, 0);
  if (ar_elt == NULL)
    return NULL;
  return (struct ar_hdr *) ar_elt->arch_header;
}