
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;


 int PARSE_FLAG (char*,int ) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_COFF_SHARED ;
 int SEC_DATA ;
 int SEC_DEBUGGING ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_NEVER_LOAD ;
 int SEC_NO_FLAGS ;
 int SEC_READONLY ;
 int SEC_ROM ;
 int _ (char*) ;
 int fatal (int ,char*) ;
 int non_fatal (int ,char*) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* xmalloc (int) ;

__attribute__((used)) static flagword
parse_flags (const char *s)
{
  flagword ret;
  const char *snext;
  int len;

  ret = SEC_NO_FLAGS;

  do
    {
      snext = strchr (s, ',');
      if (snext == ((void*)0))
 len = strlen (s);
      else
 {
   len = snext - s;
   ++snext;
 }

      if (0) ;


      else if (strncasecmp ("alloc", s, len) == 0) ret |= SEC_ALLOC;
      else if (strncasecmp ("load", s, len) == 0) ret |= SEC_LOAD;
      else if (strncasecmp ("noload", s, len) == 0) ret |= SEC_NEVER_LOAD;
      else if (strncasecmp ("readonly", s, len) == 0) ret |= SEC_READONLY;
      else if (strncasecmp ("debug", s, len) == 0) ret |= SEC_DEBUGGING;
      else if (strncasecmp ("code", s, len) == 0) ret |= SEC_CODE;
      else if (strncasecmp ("data", s, len) == 0) ret |= SEC_DATA;
      else if (strncasecmp ("rom", s, len) == 0) ret |= SEC_ROM;
      else if (strncasecmp ("share", s, len) == 0) ret |= SEC_COFF_SHARED;
      else if (strncasecmp ("contents", s, len) == 0) ret |= SEC_HAS_CONTENTS;

      else
 {
   char *copy;

   copy = xmalloc (len + 1);
   strncpy (copy, s, len);
   copy[len] = '\0';
   non_fatal (_("unrecognized section flag `%s'"), copy);
   fatal (_("supported flags: %s"),
   "alloc, load, noload, readonly, debug, code, data, rom, share, contents");
 }

      s = snext;
    }
  while (s != ((void*)0));

  return ret;
}
