
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 int LC_CTYPE ;
 char* SOURCE_CHARSET ;
 char* nl_langinfo (int ) ;
 int setlocale (int ,char*) ;

const char *
_cpp_default_encoding (void)
{
  const char *current_encoding = ((void*)0);
  if (current_encoding == ((void*)0) || *current_encoding == '\0')
    current_encoding = SOURCE_CHARSET;

  return current_encoding;
}
