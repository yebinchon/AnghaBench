#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* unit_decl_t ;
struct TYPE_8__ {int units_num; } ;
struct TYPE_7__ {char* name; int query_num; scalar_t__ query_p; } ;

/* Variables and functions */
 char* CMP_VARIABLE_NAME ; 
 char* CODE_MEMBER_NAME ; 
 char* CPU_UNIT_NAME_PARAMETER_NAME ; 
 char* GET_CPU_UNIT_CODE_FUNC_NAME ; 
 char* HIGH_VARIABLE_NAME ; 
 char* LOW_VARIABLE_NAME ; 
 char* MIDDLE_VARIABLE_NAME ; 
 char* NAME_CODE_STRUCT_NAME ; 
 char* NAME_CODE_TABLE_NAME ; 
 char* NAME_MEMBER_NAME ; 
 TYPE_6__* description ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  output_file ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  units_array ; 
 int /*<<< orphan*/  units_cmp ; 
 TYPE_1__** FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  int i;
  unit_decl_t *units;

  FUNC0 (output_file, "int\n%s (const char *%s)\n",
	   GET_CPU_UNIT_CODE_FUNC_NAME, CPU_UNIT_NAME_PARAMETER_NAME);
  FUNC0 (output_file, "{\n  struct %s {const char *%s; int %s;};\n",
	   NAME_CODE_STRUCT_NAME, NAME_MEMBER_NAME, CODE_MEMBER_NAME);
  FUNC0 (output_file, "  int %s, %s, %s, %s;\n", CMP_VARIABLE_NAME,
	   LOW_VARIABLE_NAME, MIDDLE_VARIABLE_NAME, HIGH_VARIABLE_NAME);
  FUNC0 (output_file, "  static struct %s %s [] =\n    {\n",
	   NAME_CODE_STRUCT_NAME, NAME_CODE_TABLE_NAME);
  units = FUNC4 (sizeof (unit_decl_t) * description->units_num);
  FUNC2 (units, units_array, sizeof (unit_decl_t) * description->units_num);
  FUNC3 (units, description->units_num, sizeof (unit_decl_t), units_cmp);
  for (i = 0; i < description->units_num; i++)
    if (units [i]->query_p)
      FUNC0 (output_file, "      {\"%s\", %d},\n",
	       units[i]->name, units[i]->query_num);
  FUNC0 (output_file, "    };\n\n");
  FUNC0 (output_file, "  /* The following is binary search: */\n");
  FUNC0 (output_file, "  %s = 0;\n", LOW_VARIABLE_NAME);
  FUNC0 (output_file, "  %s = sizeof (%s) / sizeof (struct %s) - 1;\n",
	   HIGH_VARIABLE_NAME, NAME_CODE_TABLE_NAME, NAME_CODE_STRUCT_NAME);
  FUNC0 (output_file, "  while (%s <= %s)\n    {\n",
	   LOW_VARIABLE_NAME, HIGH_VARIABLE_NAME);
  FUNC0 (output_file, "      %s = (%s + %s) / 2;\n",
	   MIDDLE_VARIABLE_NAME, LOW_VARIABLE_NAME, HIGH_VARIABLE_NAME);
  FUNC0 (output_file, "      %s = strcmp (%s, %s [%s].%s);\n",
	   CMP_VARIABLE_NAME, CPU_UNIT_NAME_PARAMETER_NAME,
	   NAME_CODE_TABLE_NAME, MIDDLE_VARIABLE_NAME, NAME_MEMBER_NAME);
  FUNC0 (output_file, "      if (%s < 0)\n", CMP_VARIABLE_NAME);
  FUNC0 (output_file, "        %s = %s - 1;\n",
	   HIGH_VARIABLE_NAME, MIDDLE_VARIABLE_NAME);
  FUNC0 (output_file, "      else if (%s > 0)\n", CMP_VARIABLE_NAME);
  FUNC0 (output_file, "        %s = %s + 1;\n",
	   LOW_VARIABLE_NAME, MIDDLE_VARIABLE_NAME);
  FUNC0 (output_file, "      else\n");
  FUNC0 (output_file, "        return %s [%s].%s;\n    }\n",
	   NAME_CODE_TABLE_NAME, MIDDLE_VARIABLE_NAME, CODE_MEMBER_NAME);
  FUNC0 (output_file, "  return -1;\n}\n\n");
  FUNC1 (units);
}