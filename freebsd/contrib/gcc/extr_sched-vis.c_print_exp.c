
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;






 int BUF_LEN ;


 int const CONST_INT ;
 scalar_t__ GEN_INT (int ) ;
 int const GET_CODE (scalar_t__) ;
 char* GET_RTX_NAME (int const) ;




 int INTVAL (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 scalar_t__ TRAP_CONDITION (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int XINT (scalar_t__,int) ;

 int XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;


 int print_pattern (char*,int ,int) ;
 int print_value (char*,scalar_t__,int) ;
 char* safe_concat (char*,char*,char const*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void
print_exp (char *buf, rtx x, int verbose)
{
  char tmp[BUF_LEN];
  const char *st[4];
  char *cur = buf;
  const char *fun = (char *) 0;
  const char *sep;
  rtx op[4];
  int i;

  for (i = 0; i < 4; i++)
    {
      st[i] = (char *) 0;
      op[i] = NULL_RTX;
    }

  switch (GET_CODE (x))
    {
    case 153:
      op[0] = XEXP (x, 0);
      if (GET_CODE (XEXP (x, 1)) == CONST_INT
   && INTVAL (XEXP (x, 1)) < 0)
 {
   st[1] = "-";
   op[1] = GEN_INT (-INTVAL (XEXP (x, 1)));
 }
      else
 {
   st[1] = "+";
   op[1] = XEXP (x, 1);
 }
      break;
    case 163:
      op[0] = XEXP (x, 0);
      st[1] = "+low(";
      op[1] = XEXP (x, 1);
      st[2] = ")";
      break;
    case 159:
      op[0] = XEXP (x, 0);
      st[1] = "-";
      op[1] = XEXP (x, 1);
      break;
    case 179:
      fun = "cmp";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 155:
      st[0] = "-";
      op[0] = XEXP (x, 0);
      break;
    case 157:
      op[0] = XEXP (x, 0);
      st[1] = "*";
      op[1] = XEXP (x, 1);
      break;
    case 178:
      op[0] = XEXP (x, 0);
      st[1] = "/";
      op[1] = XEXP (x, 1);
      break;
    case 138:
      fun = "udiv";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 158:
      op[0] = XEXP (x, 0);
      st[1] = "%";
      op[1] = XEXP (x, 1);
      break;
    case 135:
      fun = "umod";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 142:
      fun = "smin";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 143:
      fun = "smax";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 136:
      fun = "umin";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 137:
      fun = "umax";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 154:
      st[0] = "!";
      op[0] = XEXP (x, 0);
      break;
    case 183:
      op[0] = XEXP (x, 0);
      st[1] = "&";
      op[1] = XEXP (x, 1);
      break;
    case 166:
      op[0] = XEXP (x, 0);
      st[1] = "|";
      op[1] = XEXP (x, 1);
      break;
    case 130:
      op[0] = XEXP (x, 0);
      st[1] = "^";
      op[1] = XEXP (x, 1);
      break;
    case 182:
      op[0] = XEXP (x, 0);
      st[1] = "<<";
      op[1] = XEXP (x, 1);
      break;
    case 162:
      op[0] = XEXP (x, 0);
      st[1] = " 0>>";
      op[1] = XEXP (x, 1);
      break;
    case 181:
      op[0] = XEXP (x, 0);
      st[1] = ">>";
      op[1] = XEXP (x, 1);
      break;
    case 147:
      op[0] = XEXP (x, 0);
      st[1] = "<-<";
      op[1] = XEXP (x, 1);
      break;
    case 146:
      op[0] = XEXP (x, 0);
      st[1] = ">->";
      op[1] = XEXP (x, 1);
      break;
    case 184:
      fun = "abs";
      op[0] = XEXP (x, 0);
      break;
    case 141:
      fun = "sqrt";
      op[0] = XEXP (x, 0);
      break;
    case 176:
      fun = "ffs";
      op[0] = XEXP (x, 0);
      break;
    case 177:
      op[0] = XEXP (x, 0);
      st[1] = "==";
      op[1] = XEXP (x, 1);
      break;
    case 156:
      op[0] = XEXP (x, 0);
      st[1] = "!=";
      op[1] = XEXP (x, 1);
      break;
    case 169:
      op[0] = XEXP (x, 0);
      st[1] = ">";
      op[1] = XEXP (x, 1);
      break;
    case 168:
      fun = "gtu";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 161:
      op[0] = XEXP (x, 0);
      st[1] = "<";
      op[1] = XEXP (x, 1);
      break;
    case 160:
      fun = "ltu";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 171:
      op[0] = XEXP (x, 0);
      st[1] = ">=";
      op[1] = XEXP (x, 1);
      break;
    case 170:
      fun = "geu";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 165:
      op[0] = XEXP (x, 0);
      st[1] = "<=";
      op[1] = XEXP (x, 1);
      break;
    case 164:
      fun = "leu";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      break;
    case 144:
      fun = (verbose) ? "sign_extract" : "sxt";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      op[2] = XEXP (x, 2);
      break;
    case 128:
      fun = (verbose) ? "zero_extract" : "zxt";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      op[2] = XEXP (x, 2);
      break;
    case 145:
      fun = (verbose) ? "sign_extend" : "sxn";
      op[0] = XEXP (x, 0);
      break;
    case 129:
      fun = (verbose) ? "zero_extend" : "zxn";
      op[0] = XEXP (x, 0);
      break;
    case 173:
      fun = (verbose) ? "float_extend" : "fxn";
      op[0] = XEXP (x, 0);
      break;
    case 139:
      fun = (verbose) ? "trunc" : "trn";
      op[0] = XEXP (x, 0);
      break;
    case 172:
      fun = (verbose) ? "float_trunc" : "ftr";
      op[0] = XEXP (x, 0);
      break;
    case 174:
      fun = (verbose) ? "float" : "flt";
      op[0] = XEXP (x, 0);
      break;
    case 133:
      fun = (verbose) ? "uns_float" : "ufl";
      op[0] = XEXP (x, 0);
      break;
    case 175:
      fun = "fix";
      op[0] = XEXP (x, 0);
      break;
    case 134:
      fun = (verbose) ? "uns_fix" : "ufx";
      op[0] = XEXP (x, 0);
      break;
    case 149:
      st[0] = "--";
      op[0] = XEXP (x, 0);
      break;
    case 148:
      st[0] = "++";
      op[0] = XEXP (x, 0);
      break;
    case 152:
      op[0] = XEXP (x, 0);
      st[1] = "--";
      break;
    case 151:
      op[0] = XEXP (x, 0);
      st[1] = "++";
      break;
    case 180:
      st[0] = "call ";
      op[0] = XEXP (x, 0);
      if (verbose)
 {
   st[1] = " argc:";
   op[1] = XEXP (x, 1);
 }
      break;
    case 167:
      st[0] = "{(";
      op[0] = XEXP (x, 0);
      st[1] = ")?";
      op[1] = XEXP (x, 1);
      st[2] = ":";
      op[2] = XEXP (x, 2);
      st[3] = "}";
      break;
    case 140:
      fun = "trap_if";
      op[0] = TRAP_CONDITION (x);
      break;
    case 150:
      fun = "prefetch";
      op[0] = XEXP (x, 0);
      op[1] = XEXP (x, 1);
      op[2] = XEXP (x, 2);
      break;
    case 132:
    case 131:
      {
 cur = safe_concat (buf, cur, "unspec");
 if (GET_CODE (x) == 131)
   cur = safe_concat (buf, cur, "/v");
 cur = safe_concat (buf, cur, "[");
 sep = "";
 for (i = 0; i < XVECLEN (x, 0); i++)
   {
     print_pattern (tmp, XVECEXP (x, 0, i), verbose);
     cur = safe_concat (buf, cur, sep);
     cur = safe_concat (buf, cur, tmp);
     sep = ",";
   }
 cur = safe_concat (buf, cur, "] ");
 sprintf (tmp, "%d", XINT (x, 1));
 cur = safe_concat (buf, cur, tmp);
      }
      break;
    default:

      st[0] = GET_RTX_NAME (GET_CODE (x));
      break;
    }


  if (fun)
    {
      cur = safe_concat (buf, cur, fun);
      cur = safe_concat (buf, cur, "(");
    }

  for (i = 0; i < 4; i++)
    {
      if (st[i])
 cur = safe_concat (buf, cur, st[i]);

      if (op[i])
 {
   if (fun && i != 0)
     cur = safe_concat (buf, cur, ",");

   print_value (tmp, op[i], verbose);
   cur = safe_concat (buf, cur, tmp);
 }
    }

  if (fun)
    cur = safe_concat (buf, cur, ")");
}
