
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* TYPE_NAME (int ) ;
 int java_primitive_type (char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
java_demangled_signature_copy (char *result, char *signature)
{
  int array = 0;
  char *ptr;
  int i;
  while (*signature == '[')
    {
      array++;
      signature++;
    }
  switch (signature[0])
    {
    case 'L':

      signature++;
      ptr = result;
      for (; *signature != ';' && *signature != '\0'; signature++)
 {
   if (*signature == '/')
     *ptr++ = '.';
   else
     *ptr++ = *signature;
 }
      break;
    default:
      ptr = TYPE_NAME (java_primitive_type (signature[0]));
      i = strlen (ptr);
      strcpy (result, ptr);
      ptr = result + i;
      break;
    }
  while (--array >= 0)
    {
      *ptr++ = '[';
      *ptr++ = ']';
    }
}
