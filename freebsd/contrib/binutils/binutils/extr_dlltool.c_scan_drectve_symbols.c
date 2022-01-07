
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;
typedef int bfd ;
typedef int asection ;


 int BSF_FUNCTION ;
 scalar_t__ CONST_STRNEQ (char*,char*) ;
 int DRECTVE_SECTION_NAME ;
 int _ (char*) ;
 scalar_t__ add_stdcall_alias ;
 int bfd_get_filename (int *) ;
 int * bfd_get_section_by_name (int *,int ) ;
 int bfd_get_section_contents (int *,int *,char*,int ,int) ;
 int bfd_get_section_size (int *) ;
 int def_exports (char*,char*,int,int ,int ,int,int ) ;
 int free (char*) ;
 int inform (int ,int ,int ) ;
 int memcpy (char*,char*,int) ;
 char* strchr (char*,char) ;
 char* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
scan_drectve_symbols (bfd *abfd)
{
  asection * s;
  int size;
  char * buf;
  char * p;
  char * e;


  s = bfd_get_section_by_name (abfd, DRECTVE_SECTION_NAME);

  if (s == ((void*)0))
    return;

  size = bfd_get_section_size (s);
  buf = xmalloc (size);

  bfd_get_section_contents (abfd, s, buf, 0, size);


  inform (_("Sucking in info from %s section in %s"),
   DRECTVE_SECTION_NAME, bfd_get_filename (abfd));




  p = buf;
  e = buf + size;
  while (p < e)
    {
      if (p[0] == '-'
   && CONST_STRNEQ (p, "-export:"))
 {
   char * name;
   char * c;
   flagword flags = BSF_FUNCTION;

   p += 8;
   name = p;
   while (p < e && *p != ',' && *p != ' ' && *p != '-')
     p++;
   c = xmalloc (p - name + 1);
   memcpy (c, name, p - name);
   c[p - name] = 0;
   if (p < e && *p == ',')
     {
       char *tag_start = ++p;
       while (p < e && *p != ' ' && *p != '-')
  p++;
       if (CONST_STRNEQ (tag_start, "data"))
  flags &= ~BSF_FUNCTION;
     }




   def_exports (c, 0, -1, 0, 0, ! (flags & BSF_FUNCTION), 0);

   if (add_stdcall_alias && strchr (c, '@'))
     {
       int lead_at = (*c == '@') ;
       char *exported_name = xstrdup (c + lead_at);
       char *atsym = strchr (exported_name, '@');
       *atsym = '\0';

       def_exports (exported_name, xstrdup (c), -1, 0, 0, 0, 0);
     }
 }
      else
 p++;
    }
  free (buf);
}
