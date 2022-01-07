
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int java_demangled_signature_copy (char*,char*) ;
 int java_demangled_signature_length (char*) ;
 char* xmalloc (int) ;

char *
java_demangle_type_signature (char *signature)
{
  int length = java_demangled_signature_length (signature);
  char *result = xmalloc (length + 1);
  java_demangled_signature_copy (result, signature);
  result[length] = '\0';
  return result;
}
