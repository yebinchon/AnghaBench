
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match {int* with; int* commutative; int* early_clobber; int * use; } ;
typedef int rtx ;
struct TYPE_2__ {int n_operands; char** constraints; } ;


 int CLASS_LIKELY_SPILLED_P (int ) ;
 int CONSTRAINT_LEN (char,char const*) ;
 int MAX_RECOG_OPERANDS ;
 int READ ;
 int READWRITE ;
 int REG_CLASS_FROM_CONSTRAINT (unsigned char,char const*) ;
 int WRITE ;
 int constrain_operands (int ) ;
 int extract_insn (int ) ;
 TYPE_1__ recog_data ;
 unsigned long strtoul (char const*,char**,int) ;
 int which_alternative ;

__attribute__((used)) static int
find_matches (rtx insn, struct match *matchp)
{
  int likely_spilled[MAX_RECOG_OPERANDS];
  int op_no;
  int any_matches = 0;

  extract_insn (insn);
  if (! constrain_operands (0))
    return 0;




  for (op_no = recog_data.n_operands; --op_no >= 0; )
    matchp->with[op_no] = matchp->commutative[op_no] = -1;

  for (op_no = 0; op_no < recog_data.n_operands; op_no++)
    {
      const char *p;
      char c;
      int i = 0;

      p = recog_data.constraints[op_no];

      likely_spilled[op_no] = 0;
      matchp->use[op_no] = READ;
      matchp->early_clobber[op_no] = 0;
      if (*p == '=')
 matchp->use[op_no] = WRITE;
      else if (*p == '+')
 matchp->use[op_no] = READWRITE;

      for (;*p && i < which_alternative; p++)
 if (*p == ',')
   i++;

      while ((c = *p) != '\0' && c != ',')
 {
   switch (c)
     {
     case '=':
       break;
     case '+':
       break;
     case '&':
       matchp->early_clobber[op_no] = 1;
       break;
     case '%':
       matchp->commutative[op_no] = op_no + 1;
       matchp->commutative[op_no + 1] = op_no;
       break;

     case '0': case '1': case '2': case '3': case '4':
     case '5': case '6': case '7': case '8': case '9':
       {
  char *end;
  unsigned long match_ul = strtoul (p, &end, 10);
  int match = match_ul;

  p = end;

  if (match < op_no && likely_spilled[match])
    continue;
  matchp->with[op_no] = match;
  any_matches = 1;
  if (matchp->commutative[op_no] >= 0)
    matchp->with[matchp->commutative[op_no]] = match;
       }
     continue;

   case 'a': case 'b': case 'c': case 'd': case 'e': case 'f': case 'h':
   case 'j': case 'k': case 'l': case 'p': case 'q': case 't': case 'u':
   case 'v': case 'w': case 'x': case 'y': case 'z': case 'A': case 'B':
   case 'C': case 'D': case 'W': case 'Y': case 'Z':
     if (CLASS_LIKELY_SPILLED_P (REG_CLASS_FROM_CONSTRAINT ((unsigned char) c, p) ))
       likely_spilled[op_no] = 1;
     break;
   }
   p += CONSTRAINT_LEN (c, p);
 }
    }
  return any_matches;
}
