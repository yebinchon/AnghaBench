
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (char*,int ,int,int ,int ,int ,int ) ;
 scalar_t__ FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int free (char*) ;
 char* getenv (char*) ;
 int memcpy (char*,char const*,int) ;
 char** no_suffixes ;
 char** std_suffixes ;
 int strcat (char*,char const* const) ;
 scalar_t__ strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static char *
find_executable (const char *program, BOOL search)
{
  char *full_executable;
  char *e;
  size_t fe_len;
  const char *path = 0;
  const char *const *ext;
  const char *p, *q;
  size_t proglen = strlen (program);
  int has_extension = !!strchr (program, '.');
  int has_slash = (strchr (program, '/') || strchr (program, '\\'));
  HANDLE h;

  if (has_slash)
    search = FALSE;

  if (search)
    path = getenv ("PATH");
  if (!path)
    path = "";

  fe_len = 0;
  for (p = path; *p; p = q)
    {
      q = p;
      while (*q != ';' && *q != '\0')
 q++;
      if ((size_t)(q - p) > fe_len)
 fe_len = q - p;
      if (*q == ';')
 q++;
    }
  fe_len = fe_len + 1 + proglen + (has_extension ? 1 : 5);
  full_executable = xmalloc (fe_len);

  p = path;
  do
    {
      q = p;
      while (*q != ';' && *q != '\0')
 q++;

      e = full_executable;
      memcpy (e, p, q - p);
      e += (q - p);
      if (q - p)
 *e++ = '\\';
      strcpy (e, program);

      if (*q == ';')
 q++;

      for (e = full_executable; *e; e++)
 if (*e == '/')
   *e = '\\';



      for (ext = has_extension ? no_suffixes : std_suffixes; *ext; ext++)
 {

   *e = '\0';

   strcat (full_executable, *ext);


   h = CreateFile (full_executable, GENERIC_READ,
     FILE_SHARE_READ | FILE_SHARE_WRITE,
     0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
   if (h != INVALID_HANDLE_VALUE)
     goto found;
 }
      p = q;
    }
  while (*p);
  free (full_executable);
  return 0;

 found:
  CloseHandle (h);
  return full_executable;
}
