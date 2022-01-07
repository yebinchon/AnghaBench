
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_fileinfo {int time; } ;


 int body_time ;
 scalar_t__ flag_detailed_statistics ;
 struct c_fileinfo* get_fileinfo (char const*) ;
 int get_run_time () ;
 int header_time ;

__attribute__((used)) static void
update_header_times (const char *name)
{


  if (flag_detailed_statistics)
    {
      int this_time = get_run_time ();
      struct c_fileinfo *file = get_fileinfo (name);
      header_time += this_time - body_time;
      file->time += this_time - body_time;
      body_time = this_time;
    }
}
