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
struct toc_hash_struct {scalar_t__ key_mode; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (const void *h1, const void *h2)
{
  rtx r1 = ((const struct toc_hash_struct *) h1)->key;
  rtx r2 = ((const struct toc_hash_struct *) h2)->key;

  if (((const struct toc_hash_struct *) h1)->key_mode
      != ((const struct toc_hash_struct *) h2)->key_mode)
    return 0;

  return FUNC0 (r1, r2);
}