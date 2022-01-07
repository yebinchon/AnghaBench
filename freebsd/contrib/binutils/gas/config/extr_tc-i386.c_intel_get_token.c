
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_token {char code; char* str; int const* reg; } ;
typedef int reg_entry ;
struct TYPE_2__ {char* op_string; } ;


 char T_BYTE ;
 char T_CONST ;
 char T_DWORD ;
 char T_FWORD ;
 void* T_ID ;
 char T_NIL ;
 void* T_OFFSET ;
 char T_PTR ;
 char T_QWORD ;
 char T_REG ;
 void* T_SHL ;
 char T_SHORT ;
 void* T_SHR ;
 char T_TBYTE ;
 char T_WORD ;
 char T_XMMWORD ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 struct intel_token cur_token ;
 int free (char*) ;
 TYPE_1__ intel_parser ;
 scalar_t__ is_identifier_char (char) ;
 scalar_t__ is_space_char (char) ;
 int memcpy (char*,char*,size_t) ;
 int * parse_register (float*,char**) ;
 struct intel_token prev_token ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
intel_get_token (void)
{
  char *end_op;
  const reg_entry *reg;
  struct intel_token new_token;

  new_token.code = T_NIL;
  new_token.reg = ((void*)0);
  new_token.str = ((void*)0);



  if (prev_token.str)
    free (prev_token.str);

  prev_token = cur_token;


  while (is_space_char (*intel_parser.op_string))
    intel_parser.op_string++;


  if (*intel_parser.op_string == '\0')
    {
      cur_token = new_token;
      return;
    }



  new_token.str = (char *) xmalloc (strlen (intel_parser.op_string) + 1);
  new_token.str[0] = '\0';

  if (strchr ("0123456789", *intel_parser.op_string))
    {
      char *p = new_token.str;
      char *q = intel_parser.op_string;
      new_token.code = T_CONST;



      while (is_identifier_char (*q))
 *p++ = *q++;
      *p = '\0';


      if (strlen (intel_parser.op_string) == 2
   && (intel_parser.op_string[1] == 'b'
       || intel_parser.op_string[1] == 'f'))
 new_token.code = T_ID;
    }

  else if ((reg = parse_register (intel_parser.op_string, &end_op)) != ((void*)0))
    {
      size_t len = end_op - intel_parser.op_string;

      new_token.code = T_REG;
      new_token.reg = reg;

      memcpy (new_token.str, intel_parser.op_string, len);
      new_token.str[len] = '\0';
    }

  else if (is_identifier_char (*intel_parser.op_string))
    {
      char *p = new_token.str;
      char *q = intel_parser.op_string;



      if ((*q == '.' || *q == '$') && !is_identifier_char (*(q + 1)))
 {
   new_token.code = '.';
   new_token.str[0] = '.';
   new_token.str[1] = '\0';
 }
      else
 {
   while (is_identifier_char (*q) || *q == '@')
     *p++ = *q++;
   *p = '\0';

   if (strcasecmp (new_token.str, "NOT") == 0)
     new_token.code = '~';

   else if (strcasecmp (new_token.str, "MOD") == 0)
     new_token.code = '%';

   else if (strcasecmp (new_token.str, "AND") == 0)
     new_token.code = '&';

   else if (strcasecmp (new_token.str, "OR") == 0)
     new_token.code = '|';

   else if (strcasecmp (new_token.str, "XOR") == 0)
     new_token.code = '^';

   else if (strcasecmp (new_token.str, "SHL") == 0)
     new_token.code = T_SHL;

   else if (strcasecmp (new_token.str, "SHR") == 0)
     new_token.code = T_SHR;

   else if (strcasecmp (new_token.str, "BYTE") == 0)
     new_token.code = T_BYTE;

   else if (strcasecmp (new_token.str, "WORD") == 0)
     new_token.code = T_WORD;

   else if (strcasecmp (new_token.str, "DWORD") == 0)
     new_token.code = T_DWORD;

   else if (strcasecmp (new_token.str, "FWORD") == 0)
     new_token.code = T_FWORD;

   else if (strcasecmp (new_token.str, "QWORD") == 0)
     new_token.code = T_QWORD;

   else if (strcasecmp (new_token.str, "TBYTE") == 0

     || strcasecmp (new_token.str, "XWORD") == 0)
     new_token.code = T_TBYTE;

   else if (strcasecmp (new_token.str, "XMMWORD") == 0
     || strcasecmp (new_token.str, "OWORD") == 0)
     new_token.code = T_XMMWORD;

   else if (strcasecmp (new_token.str, "PTR") == 0)
     new_token.code = T_PTR;

   else if (strcasecmp (new_token.str, "SHORT") == 0)
     new_token.code = T_SHORT;

   else if (strcasecmp (new_token.str, "OFFSET") == 0)
     {
       new_token.code = T_OFFSET;




       if (strncasecmp (q, " FLAT:", 6) == 0)
  strcat (new_token.str, " FLAT:");
     }


   else if (strcasecmp (new_token.str, "FLAT") == 0)
     {
       new_token.code = T_OFFSET;
       if (*q == ':')
  strcat (new_token.str, ":");
       else
  as_bad (_("`:' expected"));
     }

   else
     new_token.code = T_ID;
 }
    }

  else if (strchr ("+-/*%|&^:[]()~", *intel_parser.op_string))
    {
      new_token.code = *intel_parser.op_string;
      new_token.str[0] = *intel_parser.op_string;
      new_token.str[1] = '\0';
    }

  else if (strchr ("<>", *intel_parser.op_string)
    && *intel_parser.op_string == *(intel_parser.op_string + 1))
    {
      new_token.code = *intel_parser.op_string == '<' ? T_SHL : T_SHR;
      new_token.str[0] = *intel_parser.op_string;
      new_token.str[1] = *intel_parser.op_string;
      new_token.str[2] = '\0';
    }

  else
    as_bad (_("Unrecognized token `%s'"), intel_parser.op_string);

  intel_parser.op_string += strlen (new_token.str);
  cur_token = new_token;
}
