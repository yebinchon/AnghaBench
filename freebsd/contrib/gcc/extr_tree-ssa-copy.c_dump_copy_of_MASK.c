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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  sbitmap ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ SSA_NAME ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_2__* copy_of ; 
 int /*<<< orphan*/  dump_flags ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  num_ssa_names ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (FILE *file, tree var)
{
  tree val;
  sbitmap visited;

  FUNC6 (file, var, dump_flags);

  if (FUNC3 (var) != SSA_NAME)
    return;
    
  visited = FUNC7 (num_ssa_names);
  FUNC9 (visited);
  FUNC0 (visited, FUNC1 (var));
  
  FUNC4 (file, " copy-of chain: ");

  val = var;
  FUNC6 (file, val, 0);
  FUNC4 (file, " ");
  while (copy_of[FUNC1 (val)].value)
    {
      FUNC4 (file, "-> ");
      val = copy_of[FUNC1 (val)].value;
      FUNC6 (file, val, 0);
      FUNC4 (file, " ");
      if (FUNC2 (visited, FUNC1 (val)))
        break;
      FUNC0 (visited, FUNC1 (val));
    }

  val = FUNC5 (var)->value;
  if (val == NULL_TREE)
    FUNC4 (file, "[UNDEFINED]");
  else if (val != var)
    FUNC4 (file, "[COPY]");
  else
    FUNC4 (file, "[NOT A COPY]");
  
  FUNC8 (visited);
}