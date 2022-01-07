
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int convert_filename ;
 int identify_lineno (char const*) ;
 int last_known_line_number ;
 int longjmp (int ,int) ;
 int notice (char*,int ,int ) ;
 int quiet_flag ;
 int shortpath (int *,int ) ;
 int source_confusion_recovery ;

__attribute__((used)) static void
declare_source_confusing (const char *clean_p)
{
  if (!quiet_flag)
    {
      if (clean_p == 0)
 notice ("%s: %d: warning: source too confusing\n",
  shortpath (((void*)0), convert_filename), last_known_line_number);
      else
 notice ("%s: %d: warning: source too confusing\n",
  shortpath (((void*)0), convert_filename),
  identify_lineno (clean_p));
    }
  longjmp (source_confusion_recovery, 1);
}
