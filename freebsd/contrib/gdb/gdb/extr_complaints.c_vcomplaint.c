
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct complaints {int series; TYPE_1__* explanation; } ;
struct complain {scalar_t__ counter; int fmt; int line; int * file; } ;
struct cleanup {int dummy; } ;
typedef enum complaint_series { ____Placeholder_complaint_series } complaint_series ;
struct TYPE_2__ {int postfix; int prefix; } ;






 int begin_line () ;
 int do_cleanups (struct cleanup*) ;
 struct complain* find_complaint (struct complaints*,char const*,int,char const*) ;
 int fprintf_filtered (int ,char*,int ,char*,int ) ;
 int fputs_filtered (char*,int ) ;
 int gdb_assert (int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 struct complaints* get_complaints (struct complaints**) ;
 scalar_t__ info_verbose ;
 int internal_vwarning (int *,int ,int ,int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 scalar_t__ stop_whining ;
 int stub1 (int ,int ) ;
 int vwarning (int ,int ) ;
 int warning_hook (int ,int ) ;
 int wrap_here (char*) ;
 int xfree ;
 int xvasprintf (char**,int ,int ) ;

__attribute__((used)) static void
vcomplaint (struct complaints **c, const char *file, int line, const char *fmt,
     va_list args)
{
  struct complaints *complaints = get_complaints (c);
  struct complain *complaint = find_complaint (complaints, file, line, fmt);
  enum complaint_series series;
  gdb_assert (complaints != ((void*)0));

  complaint->counter++;
  if (complaint->counter > stop_whining)
    return;

  if (info_verbose)
    series = 128;
  else
    series = complaints->series;

  if (complaint->file != ((void*)0))
    internal_vwarning (complaint->file, complaint->line, complaint->fmt, args);
  else if (warning_hook)
    (*warning_hook) (complaint->fmt, args);
  else
    {
      if (complaints->explanation == ((void*)0))

 vwarning (complaint->fmt, args);
      else
 {
   char *msg;
   struct cleanup *cleanups;
   xvasprintf (&msg, complaint->fmt, args);
   cleanups = make_cleanup (xfree, msg);
   wrap_here ("");
   if (series != 128)
     begin_line ();
   fprintf_filtered (gdb_stderr, "%s%s%s",
       complaints->explanation[series].prefix, msg,
       complaints->explanation[series].postfix);



   if (series == 130)




     fputs_filtered ("\n", gdb_stderr);
   else
     wrap_here ("");
   do_cleanups (cleanups);
 }
    }

  switch (series)
    {
    case 130:
      break;
    case 131:
      complaints->series = 128;
      break;
    case 128:
    case 129:
      complaints->series = 128;
      break;
    }





  gdb_flush (gdb_stderr);
}
