
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct op_struct {int dummy; } ;
struct TYPE_4__ {unsigned long long sort_value; int no_nibbles; int min_cpu; int mode_bits; int format; int mnemonic; int opcode; } ;


 int max_ops ;
 int no_ops ;
 TYPE_1__* op_array ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
insertOpcode (char *opcode, char *mnemonic, char *format,
       int min_cpu, int mode_bits)
{
  char *str;
  unsigned long long sort_value;
  int no_nibbles;
  int ix, k;

  while (no_ops >= max_ops)
    {
      max_ops = max_ops * 2;
      op_array = realloc (op_array, max_ops * sizeof (struct op_struct));
    }

  sort_value = 0;
  str = opcode;
  for (ix = 0; ix < 16; ix++)
    {
      if (*str >= '0' && *str <= '9')
 sort_value = (sort_value << 4) + (*str - '0');
      else if (*str >= 'a' && *str <= 'f')
 sort_value = (sort_value << 4) + (*str - 'a' + 10);
      else if (*str >= 'A' && *str <= 'F')
 sort_value = (sort_value << 4) + (*str - 'A' + 10);
      else if (*str == '?')
 sort_value <<= 4;
      else
 break;
      str ++;
    }
  sort_value <<= 4*(16 - ix);
  sort_value += (min_cpu << 8) + mode_bits;
  no_nibbles = ix;
  for (ix = 0; ix < no_ops; ix++)
    if (sort_value > op_array[ix].sort_value)
      break;
  for (k = no_ops; k > ix; k--)
    op_array[k] = op_array[k-1];
  strcpy(op_array[ix].opcode, opcode);
  strcpy(op_array[ix].mnemonic, mnemonic);
  strcpy(op_array[ix].format, format);
  op_array[ix].sort_value = sort_value;
  op_array[ix].no_nibbles = no_nibbles;
  op_array[ix].min_cpu = min_cpu;
  op_array[ix].mode_bits = mode_bits;
  no_ops++;
}
