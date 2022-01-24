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
struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct dwarf2_cu {struct objfile* objfile; } ;
struct die_info {struct type* type; } ;

/* Variables and functions */
 struct type* FUNC0 (struct objfile*) ; 
 struct type* FUNC1 (struct die_info*,struct dwarf2_cu*) ; 
 struct type* FUNC2 (struct die_info*,struct dwarf2_cu*) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,struct type*,struct type*) ; 

__attribute__((used)) static void
FUNC4 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct type *type;
  struct type *to_type;
  struct type *domain;

  if (die->type)
    {
      return;
    }

  type = FUNC0 (objfile);
  to_type = FUNC2 (die, cu);
  domain = FUNC1 (die, cu);
  FUNC3 (type, domain, to_type);

  die->type = type;
}