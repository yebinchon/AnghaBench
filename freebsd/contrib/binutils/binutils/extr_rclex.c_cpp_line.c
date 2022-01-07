
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rc_uint_type ;


 scalar_t__ CP_UTF16 ;
 scalar_t__ ISSPACE (char const) ;
 int _ (char*) ;
 int fatal (int ) ;
 int free (char*) ;
 char* initial_fn ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 char* rc_filename ;
 int rc_lineno ;
 char* rclex_tok ;
 scalar_t__ strcasecmp (char*,char*) ;
 void* strchr (char const*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int strtol (char const*,char**,int) ;
 int suppress_cpp_data ;
 int unicode_is_valid_codepage (scalar_t__) ;
 scalar_t__ wind_current_codepage ;
 scalar_t__ wind_default_codepage ;
 char* xmalloc (int) ;

__attribute__((used)) static void
cpp_line (void)
{
  const char *s = rclex_tok;
  int line;
  char *send, *fn;
  size_t len, mlen;

  ++s;
  while (ISSPACE (*s))
    ++s;


  len = strlen (s);
  mlen = strlen ("pragma");
  if (len > mlen && memcmp (s, "pragma", mlen) == 0 && ISSPACE (s[mlen]))
    {
      const char *end;

      s += mlen + 1;
      while (ISSPACE (*s))
 ++s;
      len = strlen (s);
      mlen = strlen ("code_page");
      if (len <= mlen || memcmp (s, "code_page", mlen) != 0)

 return;
      s += mlen;
      while (ISSPACE (*s))
 ++s;
      if (*s != '(')

 return;
      ++s;
      while (ISSPACE (*s))
 ++s;
      if (*s == 0 || (end = strchr (s, ')')) == ((void*)0))

 return;
      len = (size_t) (end - s);
      fn = xmalloc (len + 1);
      if (len)
       memcpy (fn, s, len);
      fn[len] = 0;
      while (len > 0 && (fn[len - 1] > 0 && fn[len - 1] <= 0x20))
 fn[--len] = 0;
      if (! len || (len == strlen ("DEFAULT") && strcasecmp (fn, "DEFAULT") == 0))
 wind_current_codepage = wind_default_codepage;
      else if (len > 0)
 {
   rc_uint_type ncp;

   if (fn[0] == '0' && (fn[1] == 'x' || fn[1] == 'X'))
       ncp = (rc_uint_type) strtol (fn + 2, ((void*)0), 16);
   else
       ncp = (rc_uint_type) strtol (fn, ((void*)0), 10);
   if (ncp == CP_UTF16 || ! unicode_is_valid_codepage (ncp))
     fatal (_("invalid value specified for pragma code_page.\n"));
   wind_current_codepage = ncp;
 }
      free (fn);
      return;
    }

  line = strtol (s, &send, 0);
  if (*send != '\0' && ! ISSPACE (*send))
    return;


  rc_lineno = line - 1;

  s = send;
  while (ISSPACE (*s))
    ++s;

  if (*s != '"')
    return;

  ++s;
  send = strchr (s, '"');
  if (send == ((void*)0))
    return;

  fn = xmalloc (send - s + 1);
  strncpy (fn, s, send - s);
  fn[send - s] = '\0';

  free (rc_filename);
  rc_filename = fn;

  if (! initial_fn)
    {
      initial_fn = xmalloc (strlen (fn) + 1);
      strcpy (initial_fn, fn);
    }



  if (strcmp (initial_fn, fn) == 0
      || strcmp (fn + strlen (fn) - 2, ".h") != 0)
    suppress_cpp_data = 0;
  else
    suppress_cpp_data = 1;
}
