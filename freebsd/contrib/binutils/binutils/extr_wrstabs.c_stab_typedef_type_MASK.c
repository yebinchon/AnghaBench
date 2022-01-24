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
struct string_hash_entry {scalar_t__ index; int /*<<< orphan*/  size; } ;
struct stab_write_handle {int /*<<< orphan*/  typedef_hash; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct stab_write_handle*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct string_hash_entry* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *name)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  struct string_hash_entry *h;

  h = FUNC2 (&info->typedef_hash, name, FALSE, FALSE);
  FUNC0 (h != NULL && h->index > 0);

  return FUNC1 (info, h->index, h->size);
}