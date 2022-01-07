
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {int * codes; } ;
typedef int rtx ;



 int GET_CODE (int ) ;
 char* GET_RTX_NAME (int) ;
 char I ;





 char N ;

 int NUM_RTX_CODE ;
 char TRISTATE_AND (char,char) ;
 char TRISTATE_NOT (char) ;
 char TRISTATE_OR (char,char) ;
 int XEXP (int ,int) ;
 char* XSTR (int ,int) ;
 char Y ;
 int* did_you_mean_codes ;
 int error_count ;
 struct pred_data* lookup_predicate (char*) ;
 int memset (char*,char,int) ;
 int message_with_line (int ,char*,...) ;
 int pattern_lineno ;
 char* scan_comma_elt (char const**) ;
 int strncasecmp (char const*,char*,size_t) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static void
compute_predicate_codes (rtx exp, char codes[NUM_RTX_CODE])
{
  char op0_codes[NUM_RTX_CODE];
  char op1_codes[NUM_RTX_CODE];
  char op2_codes[NUM_RTX_CODE];
  int i;

  switch (GET_CODE (exp))
    {
    case 134:
      compute_predicate_codes (XEXP (exp, 0), op0_codes);
      compute_predicate_codes (XEXP (exp, 1), op1_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
 codes[i] = TRISTATE_AND (op0_codes[i], op1_codes[i]);
      break;

    case 132:
      compute_predicate_codes (XEXP (exp, 0), op0_codes);
      compute_predicate_codes (XEXP (exp, 1), op1_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
 codes[i] = TRISTATE_OR (op0_codes[i], op1_codes[i]);
      break;
    case 128:
      compute_predicate_codes (XEXP (exp, 0), op0_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
 codes[i] = TRISTATE_NOT (op0_codes[i]);
      break;

    case 133:

      compute_predicate_codes (XEXP (exp, 0), op0_codes);
      compute_predicate_codes (XEXP (exp, 1), op1_codes);
      compute_predicate_codes (XEXP (exp, 2), op2_codes);
      for (i = 0; i < NUM_RTX_CODE; i++)
 codes[i] = TRISTATE_OR (TRISTATE_AND (op0_codes[i], op1_codes[i]),
    TRISTATE_AND (TRISTATE_NOT (op0_codes[i]),
           op2_codes[i]));
      break;

    case 131:



      if (XSTR (exp, 1)[0] != '\0')
 {
   memset (codes, Y, NUM_RTX_CODE);
   break;
 }

      memset (codes, N, NUM_RTX_CODE);
      {
 const char *next_code = XSTR (exp, 0);
 const char *code;

 if (*next_code == '\0')
   {
     message_with_line (pattern_lineno, "empty match_code expression");
     error_count++;
     break;
   }

 while ((code = scan_comma_elt (&next_code)) != 0)
   {
     size_t n = next_code - code;
     int found_it = 0;

     for (i = 0; i < NUM_RTX_CODE; i++)
       if (!strncmp (code, GET_RTX_NAME (i), n)
    && GET_RTX_NAME (i)[n] == '\0')
  {
    codes[i] = Y;
    found_it = 1;
    break;
  }
     if (!found_it)
       {
  message_with_line (pattern_lineno, "match_code \"%.*s\" matches nothing",
       (int) n, code);
  error_count ++;
  for (i = 0; i < NUM_RTX_CODE; i++)
    if (!strncasecmp (code, GET_RTX_NAME (i), n)
        && GET_RTX_NAME (i)[n] == '\0'
        && !did_you_mean_codes[i])
      {
        did_you_mean_codes[i] = 1;
        message_with_line (pattern_lineno, "(did you mean \"%s\"?)", GET_RTX_NAME (i));
      }
       }

   }
      }
      break;

    case 130:


      {
 struct pred_data *p = lookup_predicate (XSTR (exp, 1));
 if (!p)
   {
     message_with_line (pattern_lineno,
          "reference to unknown predicate '%s'",
          XSTR (exp, 1));
     error_count++;
     break;
   }
 for (i = 0; i < NUM_RTX_CODE; i++)
   codes[i] = p->codes[i] ? I : N;
      }
      break;


    case 129:

      memset (codes, I, NUM_RTX_CODE);
      break;

    default:
      message_with_line (pattern_lineno,
  "'%s' cannot be used in a define_predicate expression",
  GET_RTX_NAME (GET_CODE (exp)));
      error_count++;
      memset (codes, I, NUM_RTX_CODE);
      break;
    }
}
