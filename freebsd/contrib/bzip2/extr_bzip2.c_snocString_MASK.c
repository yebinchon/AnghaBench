#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* link; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  Char ;
typedef  TYPE_1__ Cell ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static 
Cell *FUNC4 ( Cell *root, Char *name )
{
   if (root == NULL) {
      Cell *tmp = FUNC0();
      tmp->name = (Char*) FUNC1 ( 5 + FUNC3(name) );
      FUNC2 ( tmp->name, name );
      return tmp;
   } else {
      Cell *tmp = root;
      while (tmp->link != NULL) tmp = tmp->link;
      tmp->link = FUNC4 ( tmp->link, name );
      return root;
   }
}