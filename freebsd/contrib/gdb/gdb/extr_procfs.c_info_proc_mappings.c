
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procinfo ;


 int TARGET_PTR_BIT ;
 int info_mappings_callback ;
 int iterate_over_mappings (int *,int *,int *,int ) ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
info_proc_mappings (procinfo *pi, int summary)
{
  char *header_fmt_string;

  if (TARGET_PTR_BIT == 32)
    header_fmt_string = "\t%10s %10s %10s %10s %7s\n";
  else
    header_fmt_string = "  %18s %18s %10s %10s %7s\n";

  if (summary)
    return;

  printf_filtered ("Mapped address spaces:\n\n");
  printf_filtered (header_fmt_string,
     "Start Addr",
     "  End Addr",
     "      Size",
     "    Offset",
     "Flags");

  iterate_over_mappings (pi, ((void*)0), ((void*)0), info_mappings_callback);
  printf_filtered ("\n");
}
