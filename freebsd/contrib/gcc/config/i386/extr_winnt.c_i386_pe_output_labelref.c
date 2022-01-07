
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DLL_EXPORT_PREFIX ;
 int DLL_IMPORT_PREFIX ;
 char const FASTCALL_PREFIX ;
 char* USER_LABEL_PREFIX ;
 int fprintf (int *,char*,char*,...) ;
 char* i386_pe_strip_name_encoding (char const*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

void i386_pe_output_labelref (FILE *stream, const char *name)
{
  if (strncmp (name, DLL_IMPORT_PREFIX, strlen (DLL_IMPORT_PREFIX))
      == 0)

    {
      if (name[strlen (DLL_IMPORT_PREFIX)] == FASTCALL_PREFIX)

        {
          fprintf (stream, "__imp_%s",
                   i386_pe_strip_name_encoding (name));
        }
      else

        {
          fprintf (stream, "__imp__%s",
                   i386_pe_strip_name_encoding (name));
        }
    }
  else if ((name[0] == FASTCALL_PREFIX)
           || (strncmp (name, DLL_EXPORT_PREFIX, strlen (DLL_EXPORT_PREFIX))
        == 0
        && name[strlen (DLL_EXPORT_PREFIX)] == FASTCALL_PREFIX))

    {
      fprintf (stream, "%s",
               i386_pe_strip_name_encoding (name));
    }
  else

    {
      fprintf (stream, "%s%s", USER_LABEL_PREFIX,
               i386_pe_strip_name_encoding (name));
    }
}
