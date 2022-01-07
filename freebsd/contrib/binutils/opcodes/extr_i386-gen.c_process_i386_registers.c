
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


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
process_i386_registers (void)
{
  FILE *fp = fopen ("i386-reg.tbl", "r");
  char buf[2048];
  char *str, *p, *last;
  char *reg_name, *reg_type, *reg_flags, *reg_num;

  if (fp == ((void*)0))
    fail (_("can't find i386-reg.tbl for reading\n"));

  printf ("\n/* i386 register table.  */\n\n");
  printf ("const reg_entry i386_regtab[] =\n{\n");

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


      reg_name = next_field (p, &str);

      if (str >= last)
 abort ();


      reg_type = next_field (str, &str);

      if (str >= last)
 abort ();


      reg_flags = next_field (str, &str);

      if (str >= last)
 abort ();


      reg_num = next_field (str, &str);

      printf ("  { \"%s\", %s, %s, %s },\n",
       reg_name, reg_type, reg_flags, reg_num);
    }

  printf ("};\n");

  printf ("\nconst unsigned int i386_regtab_size = ARRAY_SIZE (i386_regtab);\n");
}
