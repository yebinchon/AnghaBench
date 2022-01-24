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
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  domain_enum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct block const*) ; 
 struct symbol* FUNC1 (char const*,char const*,struct block const*,int /*<<< orphan*/  const,struct symtab**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct symbol *
FUNC2 (const char *name,
			   const char *linkage_name,
			   const struct block *block,
			   const domain_enum domain,
			   struct symtab **symtab)
{
  return FUNC1 (name, linkage_name, block, domain,
				 symtab, FUNC0 (block), 0);
}