
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int start ;
typedef int file_off ;
typedef int FILE ;


 long EOF ;
 int STRING_ISGRAPHIC (long) ;
 int address_radix ;
 int fputs (char*,int ) ;
 long get_char (int *,int*,int*,char**) ;
 scalar_t__ print_addresses ;
 scalar_t__ print_filenames ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stdout ;
 int string_min ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
print_strings (const char *filename, FILE *stream, file_off address,
        int stop_point, int magiccount, char *magic)
{
  char *buf = (char *) xmalloc (sizeof (char) * (string_min + 1));

  while (1)
    {
      file_off start;
      int i;
      long c;


    tryline:
      if (stop_point && address >= stop_point)
 break;
      start = address;
      for (i = 0; i < string_min; i++)
 {
   c = get_char (stream, &address, &magiccount, &magic);
   if (c == EOF)
     return;
   if (! STRING_ISGRAPHIC (c))

     goto tryline;
   buf[i] = c;
 }




      if (print_filenames)
 printf ("%s: ", filename);
      if (print_addresses)
 switch (address_radix)
   {
   case 8:

     if (sizeof (start) > sizeof (long))
       printf ("%7llo ", (unsigned long long) start);
     else







       printf ("%7lo ", (unsigned long) start);
     break;

   case 10:

     if (sizeof (start) > sizeof (long))
       printf ("%7lld ", (unsigned long long) start);
     else







       printf ("%7ld ", (long) start);
     break;

   case 16:

     if (sizeof (start) > sizeof (long))
       printf ("%7llx ", (unsigned long long) start);
     else
       printf ("%7lx ", (unsigned long) start);
     break;
   }

      buf[i] = '\0';
      fputs (buf, stdout);

      while (1)
 {
   c = get_char (stream, &address, &magiccount, &magic);
   if (c == EOF)
     break;
   if (! STRING_ISGRAPHIC (c))
     break;
   putchar (c);
 }

      putchar ('\n');
    }
}
