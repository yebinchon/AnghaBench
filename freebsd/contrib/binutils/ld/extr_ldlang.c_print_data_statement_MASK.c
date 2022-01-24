#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; TYPE_5__* exp; int /*<<< orphan*/  value; TYPE_1__* output_section; scalar_t__ output_offset; } ;
typedef  TYPE_3__ lang_data_statement_type ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_size_type ;
struct TYPE_7__ {scalar_t__ node_class; } ;
struct TYPE_9__ {TYPE_2__ type; } ;
struct TYPE_6__ {scalar_t__ vma; } ;

/* Variables and functions */
#define  BYTE 132 
 int /*<<< orphan*/  BYTE_SIZE ; 
#define  LONG 131 
 int /*<<< orphan*/  LONG_SIZE ; 
#define  QUAD 130 
 int /*<<< orphan*/  QUAD_SIZE ; 
 int SECTION_NAME_MAP_LENGTH ; 
#define  SHORT 129 
 int /*<<< orphan*/  SHORT_SIZE ; 
#define  SQUAD 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ etree_value ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ print_dot ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7 (lang_data_statement_type *data)
{
  int i;
  bfd_vma addr;
  bfd_size_type size;
  const char *name;

  FUNC3 ();
  for (i = 0; i < SECTION_NAME_MAP_LENGTH; i++)
    FUNC6 ();

  addr = data->output_offset;
  if (data->output_section != NULL)
    addr += data->output_section->vma;

  switch (data->type)
    {
    default:
      FUNC1 ();
    case BYTE:
      size = BYTE_SIZE;
      name = "BYTE";
      break;
    case SHORT:
      size = SHORT_SIZE;
      name = "SHORT";
      break;
    case LONG:
      size = LONG_SIZE;
      name = "LONG";
      break;
    case QUAD:
      size = QUAD_SIZE;
      name = "QUAD";
      break;
    case SQUAD:
      size = QUAD_SIZE;
      name = "SQUAD";
      break;
    }

  FUNC4 ("0x%V %W %s 0x%v", addr, size, name, data->value);

  if (data->exp->type.node_class != etree_value)
    {
      FUNC6 ();
      FUNC2 (data->exp);
    }

  FUNC5 ();

  print_dot = addr + FUNC0 (size);
}