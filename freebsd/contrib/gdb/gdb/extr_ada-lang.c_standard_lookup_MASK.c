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
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  domain_enum ;

/* Variables and functions */
 struct symbol* FUNC0 (char const*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct symbol *
FUNC1 (const char *name, domain_enum domain)
{
  struct symbol *sym;
  sym = FUNC0 (name, (struct block *) NULL, domain, 0, NULL);
  return sym;
}