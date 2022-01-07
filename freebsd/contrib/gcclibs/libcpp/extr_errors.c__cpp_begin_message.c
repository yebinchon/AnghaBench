
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int source_location ;
struct TYPE_6__ {int errors; } ;
typedef TYPE_1__ cpp_reader ;



 int CPP_DL_EXTRACT (int) ;



 scalar_t__ CPP_DL_WARNING_P (int) ;

 int CPP_OPTION (TYPE_1__*,int ) ;
 int _ (char*) ;
 int cpp_in_system_header (TYPE_1__*) ;
 int fputs (int ,int ) ;
 int inhibit_errors ;
 int inhibit_warnings ;
 int pedantic_errors ;
 int print_location (TYPE_1__*,int ,unsigned int) ;
 int stderr ;
 int warn_system_headers ;
 int warnings_are_errors ;

int
_cpp_begin_message (cpp_reader *pfile, int code,
      source_location src_loc, unsigned int column)
{
  int level = CPP_DL_EXTRACT (code);

  switch (level)
    {
    case 129:
    case 130:
      if (cpp_in_system_header (pfile)
   && ! CPP_OPTION (pfile, warn_system_headers))
 return 0;


    case 128:
      if (CPP_OPTION (pfile, warnings_are_errors)
   || (level == 130 && CPP_OPTION (pfile, pedantic_errors)))
 {
   if (CPP_OPTION (pfile, inhibit_errors))
     return 0;
   level = 132;
   pfile->errors++;
 }
      else if (CPP_OPTION (pfile, inhibit_warnings))
 return 0;
      break;

    case 132:
      if (CPP_OPTION (pfile, inhibit_errors))
 return 0;

    case 131:
      pfile->errors++;
      break;
    }

  print_location (pfile, src_loc, column);
  if (CPP_DL_WARNING_P (level))
    fputs (_("warning: "), stderr);
  else if (level == 131)
    fputs (_("internal error: "), stderr);
  else
    fputs (_("error: "), stderr);

  return 1;
}
