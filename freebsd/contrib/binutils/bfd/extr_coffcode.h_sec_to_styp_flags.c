
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int flagword ;


 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 char* DOT_DEBUG ;
 char* GNU_LINKONCE_WI ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_COFF_SHARED_LIBRARY ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_NEVER_LOAD ;
 int SEC_READONLY ;
 int SEC_TIC54X_BLOCK ;
 int SEC_TIC54X_CLINK ;
 long STYP_BLOCK ;
 long STYP_BSS ;
 long STYP_CLINK ;
 long STYP_DATA ;
 long STYP_DEBUG_INFO ;
 long STYP_EXCEPT ;
 long STYP_INFO ;
 long STYP_LIB ;
 long STYP_LIT ;
 long STYP_LOADER ;
 long STYP_NOLOAD ;
 long STYP_PAD ;
 long STYP_TEXT ;
 long STYP_TYPCHK ;
 long STYP_XCOFF_DEBUG ;
 int _BSS ;
 int _COMMENT ;
 int _DATA ;
 int _EXCEPT ;
 int _LIB ;
 int _LIT ;
 int _LOADER ;
 int _PAD ;
 int _TEXT ;
 int _TYPCHK ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static long
sec_to_styp_flags (const char *sec_name, flagword sec_flags)
{
  long styp_flags = 0;

  if (!strcmp (sec_name, _TEXT))
    {
      styp_flags = STYP_TEXT;
    }
  else if (!strcmp (sec_name, _DATA))
    {
      styp_flags = STYP_DATA;
    }
  else if (!strcmp (sec_name, _BSS))
    {
      styp_flags = STYP_BSS;
    }
  else if (CONST_STRNEQ (sec_name, DOT_DEBUG))
    {

      if (!sec_name[6])
        styp_flags = STYP_XCOFF_DEBUG;
      else
        styp_flags = STYP_DEBUG_INFO;
    }
  else if (CONST_STRNEQ (sec_name, ".stab"))
    {
      styp_flags = STYP_DEBUG_INFO;
    }
  else if (sec_flags & SEC_CODE)
    {
      styp_flags = STYP_TEXT;
    }
  else if (sec_flags & SEC_DATA)
    {
      styp_flags = STYP_DATA;
    }
  else if (sec_flags & SEC_READONLY)
    {



      styp_flags = STYP_TEXT;

    }
  else if (sec_flags & SEC_LOAD)
    {
      styp_flags = STYP_TEXT;
    }
  else if (sec_flags & SEC_ALLOC)
    {
      styp_flags = STYP_BSS;
    }
  return styp_flags;
}
