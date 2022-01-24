#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* filename; } ;
typedef  TYPE_1__ lang_input_statement_type ;
struct TYPE_5__ {int /*<<< orphan*/  map_file; } ;

/* Variables and functions */
 TYPE_3__ config ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void
FUNC1 (lang_input_statement_type *statm)
{
  if (statm->filename != NULL)
    {
      FUNC0 (config.map_file, "LOAD %s\n", statm->filename);
    }
}