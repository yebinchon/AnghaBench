
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum score_insn_type { ____Placeholder_score_insn_type } score_insn_type ;
typedef enum insn_class { ____Placeholder_insn_class } insn_class ;


 scalar_t__ FAIL ;


 int INSN_CLASS_16 ;
 int INSN_CLASS_32 ;
 int INSN_CLASS_PCE ;
 int INSN_CLASS_SYN ;
 int abort () ;
__attribute__((used)) static enum insn_class
get_insn_class_from_type (enum score_insn_type type)
{
  enum insn_class retval = (int) FAIL;

  switch (type)
    {
    case 165:
    case 164:
    case 144:
    case 152:
    case 163:
    case 168:
    case 171:
    case 161:
    case 167:
    case 151:
    case 143:
    case 133:
    case 162:
    case 174:
      retval = INSN_CLASS_16;
      break;
    case 159:
    case 132:
    case 134:
    case 160:
    case 181:
    case 166:
    case 154:
    case 142:
    case 150:
    case 138:
    case 139:
    case 146:
    case 147:
    case 156:
    case 141:
    case 149:
    case 170:
    case 169:
    case 158:
    case 130:
    case 131:
    case 155:
    case 136:
    case 135:
    case 172:
    case 180:
    case 128:
    case 140:
    case 137:
    case 148:
    case 129:
    case 157:
    case 173:
    case 153:
    case 145:
    case 179:
    case 178:
    case 175:
      retval = INSN_CLASS_32;
      break;
    case 177:
      retval = INSN_CLASS_PCE;
      break;
    case 176:
      retval = INSN_CLASS_SYN;
      break;
    default:
      abort ();
      break;
    }
  return retval;
}
