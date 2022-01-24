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
struct reg_entry {struct neon_typed_alias* neon; } ;
struct neon_typed_alias {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct reg_entry* FUNC2 (char*,int,int) ; 
 struct neon_typed_alias* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (char *str, int number, int type,
                       struct neon_typed_alias *atype)
{
  struct reg_entry *reg = FUNC2 (str, number, type);
  
  if (!reg)
    {
      FUNC1 (FUNC0("attempt to redefine typed alias"));
      return;
    }
  
  if (atype)
    {
      reg->neon = FUNC3 (sizeof (struct neon_typed_alias));
      *reg->neon = *atype;
    }
}