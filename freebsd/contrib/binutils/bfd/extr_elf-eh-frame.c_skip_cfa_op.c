
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
 int FALSE ;
 int TRUE ;
 int read_byte (int**,int*,int*) ;
 int read_uleb128 (int**,int*,int*) ;
 int skip_bytes (int**,int*,int) ;
 int skip_leb128 (int**,int*) ;

__attribute__((used)) static bfd_boolean
skip_cfa_op (bfd_byte **iter, bfd_byte *end, unsigned int encoded_ptr_width)
{
  bfd_byte op;
  bfd_vma length;

  if (!read_byte (iter, end, &op))
    return FALSE;

  switch (op & 0xc0 ? op & 0xc0 : op)
    {
    case 142:
    case 153:
    case 136:
    case 137:
    case 134:
    case 155:

      return TRUE;

    case 141:
    case 135:
    case 131:
    case 133:
    case 145:
    case 147:
    case 146:
    case 157:

      return skip_leb128 (iter, end);

    case 129:
    case 128:
    case 140:
    case 138:
    case 149:
    case 139:
    case 156:
    case 144:

      return (skip_leb128 (iter, end)
       && skip_leb128 (iter, end));

    case 148:

      return (read_uleb128 (iter, end, &length)
       && skip_bytes (iter, end, length));

    case 143:
    case 130:

      return (skip_leb128 (iter, end)
       && read_uleb128 (iter, end, &length)
       && skip_bytes (iter, end, length));

    case 132:
      return skip_bytes (iter, end, encoded_ptr_width);

    case 152:
      return skip_bytes (iter, end, 1);

    case 151:
      return skip_bytes (iter, end, 2);

    case 150:
      return skip_bytes (iter, end, 4);

    case 154:
      return skip_bytes (iter, end, 8);

    default:
      return FALSE;
    }
}
