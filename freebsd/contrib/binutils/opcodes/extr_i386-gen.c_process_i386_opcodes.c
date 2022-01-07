
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 unsigned int ARRAY_SIZE (char**) ;
 scalar_t__ ISSPACE (char) ;
 int MAX_OPERANDS ;
 int _ (char*) ;
 int abort () ;
 int fail (int ) ;
 int feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* next_field (char*,char**) ;
 int printf (char*,...) ;
 char* remove_leading_whitespaces (char*) ;
 int remove_trailing_whitespaces (char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
process_i386_opcodes (void)
{
  FILE *fp = fopen ("i386-opc.tbl", "r");
  char buf[2048];
  unsigned int i;
  char *str, *p, *last;
  char *name, *operands, *base_opcode, *extension_opcode;
  char *cpu_flags, *opcode_modifier, *operand_types [MAX_OPERANDS];

  if (fp == ((void*)0))
    fail (_("can't find i386-opc.tbl for reading\n"));

  printf ("\n/* i386 opcode table.  */\n\n");
  printf ("const template i386_optab[] =\n{\n");

  while (!feof (fp))
    {
      if (fgets (buf, sizeof (buf), fp) == ((void*)0))
 break;

      p = remove_leading_whitespaces (buf);


      str = strstr (p, "//");
      if (str != ((void*)0))
 str[0] = '\0';


      remove_trailing_whitespaces (p);

      switch (p[0])
 {
 case '#':
   printf ("%s\n", p);
 case '\0':
   continue;
   break;
 default:
   break;
 }

      last = p + strlen (p);


      name = next_field (p, &str);

      if (str >= last)
 abort ();


      operands = next_field (str, &str);

      if (str >= last)
 abort ();


      base_opcode = next_field (str, &str);

      if (str >= last)
 abort ();


      extension_opcode = next_field (str, &str);

      if (str >= last)
 abort ();


      cpu_flags = next_field (str, &str);

      if (str >= last)
 abort ();


      opcode_modifier = next_field (str, &str);

      if (str >= last)
 abort ();


      str = remove_leading_whitespaces (str);
      if (*str != '{')
 abort ();
      str = remove_leading_whitespaces (str + 1);

      i = strlen (str);


      if (i < 2)
 abort ();


      do
 {
   i--;
   if (ISSPACE (str[i]) || str[i] == '}')
     str[i] = '\0';
   else
     break;
 }
      while (i != 0);

      last = str + i;


      for (i = 0; i < ARRAY_SIZE (operand_types); i++)
 {
   if (str >= last)
     {
       operand_types [i] = ((void*)0);
       break;
     }

   operand_types [i] = next_field (str, &str);
   if (*operand_types[i] == '0')
     {
       if (i != 0)
  operand_types[i] = ((void*)0);
       break;
     }
 }

      printf ("  { \"%s\", %s, %s, %s, %s,\n",
       name, operands, base_opcode, extension_opcode,
       cpu_flags);

      printf ("    %s,\n", opcode_modifier);

      printf ("    { ");

      for (i = 0; i < ARRAY_SIZE (operand_types); i++)
 {
   if (operand_types[i] == ((void*)0)
       || *operand_types[i] == '0')
     {
       if (i == 0)
  printf ("0");
       break;
     }

   if (i != 0)
     printf (",\n      ");

   printf ("%s", operand_types[i]);
 }
      printf (" } },\n");
    }

  printf ("  { NULL, 0, 0, 0, 0, 0, { 0 } }\n");
  printf ("};\n");
}
