
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_3__ {unsigned int value; } ;
typedef TYPE_1__ cselib_val ;





 int CODE_LABEL_NUMBER (int ) ;

 scalar_t__ CONST_DOUBLE_HIGH (int ) ;
 scalar_t__ CONST_DOUBLE_LOW (int ) ;
 int CONST_DOUBLE_REAL_VALUE (int ) ;


 int CONST_VECTOR_ELT (int ,int) ;
 int CONST_VECTOR_NUNITS (int ) ;
 int GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INTVAL (int ) ;


 int MEM_VOLATILE_P (int ) ;
 scalar_t__ VOIDmode ;
 int XEXP (int ,int) ;
 unsigned int XINT (int ,int) ;
 scalar_t__ XSTR (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 TYPE_1__* cselib_lookup (int ,scalar_t__,int) ;
 int gcc_unreachable () ;
 unsigned int real_hash (int ) ;

__attribute__((used)) static unsigned int
cselib_hash_rtx (rtx x, int create)
{
  cselib_val *e;
  int i, j;
  enum rtx_code code;
  const char *fmt;
  unsigned int hash = 0;

  code = GET_CODE (x);
  hash += (unsigned) code + (unsigned) GET_MODE (x);

  switch (code)
    {
    case 138:
    case 130:
      e = cselib_lookup (x, GET_MODE (x), create);
      if (! e)
 return 0;

      return e->value;

    case 141:
      hash += ((unsigned) 141 << 7) + INTVAL (x);
      return hash ? hash : (unsigned int) 141;

    case 142:


      hash += (unsigned) code + (unsigned) GET_MODE (x);
      if (GET_MODE (x) != VOIDmode)
 hash += real_hash (CONST_DOUBLE_REAL_VALUE (x));
      else
 hash += ((unsigned) CONST_DOUBLE_LOW (x)
   + (unsigned) CONST_DOUBLE_HIGH (x));
      return hash ? hash : (unsigned int) 142;

    case 140:
      {
 int units;
 rtx elt;

 units = CONST_VECTOR_NUNITS (x);

 for (i = 0; i < units; ++i)
   {
     elt = CONST_VECTOR_ELT (x, i);
     hash += cselib_hash_rtx (elt, 0);
   }

 return hash;
      }


    case 139:


      hash += (((unsigned int) 139 << 7)
        + CODE_LABEL_NUMBER (XEXP (x, 0)));
      return hash ? hash : (unsigned int) 139;

    case 129:
      {





 unsigned int h = 0;
 const unsigned char *p = (const unsigned char *) XSTR (x, 0);

 while (*p)
   h += (h << 7) + *p++;

 hash += ((unsigned int) 129 << 7) + h;
 return hash ? hash : (unsigned int) 129;
      }

    case 133:
    case 132:
    case 136:
    case 135:
    case 134:
    case 131:
    case 137:
    case 143:
    case 144:
    case 128:
      return 0;

    case 145:
      if (MEM_VOLATILE_P (x))
 return 0;

      break;

    default:
      break;
    }

  i = GET_RTX_LENGTH (code) - 1;
  fmt = GET_RTX_FORMAT (code);
  for (; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'e':
   {
     rtx tem = XEXP (x, i);
     unsigned int tem_hash = cselib_hash_rtx (tem, create);

     if (tem_hash == 0)
       return 0;

     hash += tem_hash;
   }
   break;
 case 'E':
   for (j = 0; j < XVECLEN (x, i); j++)
     {
       unsigned int tem_hash
  = cselib_hash_rtx (XVECEXP (x, i, j), create);

       if (tem_hash == 0)
  return 0;

       hash += tem_hash;
     }
   break;

 case 's':
   {
     const unsigned char *p = (const unsigned char *) XSTR (x, i);

     if (p)
       while (*p)
  hash += *p++;
     break;
   }

 case 'i':
   hash += XINT (x, i);
   break;

 case '0':
 case 't':

   break;

 default:
   gcc_unreachable ();
 }
    }

  return hash ? hash : 1 + (unsigned int) GET_CODE (x);
}
