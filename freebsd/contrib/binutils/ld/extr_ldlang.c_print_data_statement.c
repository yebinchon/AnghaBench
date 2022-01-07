
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int type; TYPE_5__* exp; int value; TYPE_1__* output_section; scalar_t__ output_offset; } ;
typedef TYPE_3__ lang_data_statement_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
struct TYPE_7__ {scalar_t__ node_class; } ;
struct TYPE_9__ {TYPE_2__ type; } ;
struct TYPE_6__ {scalar_t__ vma; } ;



 int BYTE_SIZE ;

 int LONG_SIZE ;

 int QUAD_SIZE ;
 int SECTION_NAME_MAP_LENGTH ;

 int SHORT_SIZE ;

 scalar_t__ TO_ADDR (int ) ;
 int abort () ;
 scalar_t__ etree_value ;
 int exp_print_tree (TYPE_5__*) ;
 int init_opb () ;
 int minfo (char*,scalar_t__,int ,char const*,int ) ;
 scalar_t__ print_dot ;
 int print_nl () ;
 int print_space () ;

__attribute__((used)) static void
print_data_statement (lang_data_statement_type *data)
{
  int i;
  bfd_vma addr;
  bfd_size_type size;
  const char *name;

  init_opb ();
  for (i = 0; i < SECTION_NAME_MAP_LENGTH; i++)
    print_space ();

  addr = data->output_offset;
  if (data->output_section != ((void*)0))
    addr += data->output_section->vma;

  switch (data->type)
    {
    default:
      abort ();
    case 132:
      size = BYTE_SIZE;
      name = "BYTE";
      break;
    case 129:
      size = SHORT_SIZE;
      name = "SHORT";
      break;
    case 131:
      size = LONG_SIZE;
      name = "LONG";
      break;
    case 130:
      size = QUAD_SIZE;
      name = "QUAD";
      break;
    case 128:
      size = QUAD_SIZE;
      name = "SQUAD";
      break;
    }

  minfo ("0x%V %W %s 0x%v", addr, size, name, data->value);

  if (data->exp->type.node_class != etree_value)
    {
      print_space ();
      exp_print_tree (data->exp);
    }

  print_nl ();

  print_dot = addr + TO_ADDR (size);
}
