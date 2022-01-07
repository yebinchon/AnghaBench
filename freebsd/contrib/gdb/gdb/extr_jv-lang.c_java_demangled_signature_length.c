
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* TYPE_NAME (int ) ;
 int java_primitive_type (char) ;
 int strlen (char*) ;

__attribute__((used)) static int
java_demangled_signature_length (char *signature)
{
  int array = 0;
  for (; *signature == '['; signature++)
    array += 2;
  switch (signature[0])
    {
    case 'L':

      return strlen (signature) - 2 + array;
    default:
      return strlen (TYPE_NAME (java_primitive_type (signature[0]))) + array;
    }
}
