
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int TIME_THRESH ;
 int determine_display_tasks (int) ;
 int draw_c_p_states () ;
 int draw_cpu_usage () ;
 int draw_process_bars () ;
 int draw_wakeups () ;
 int first_time ;
 int last_time ;
 int max_freq ;
 scalar_t__ numcpus ;
 int open_svg (char const*,scalar_t__,int,int ,int ) ;
 int svg_close () ;
 int svg_cpu_box (scalar_t__,int ,int ) ;
 int svg_legenda () ;
 int svg_time_grid () ;
 int turbo_frequency ;

__attribute__((used)) static void write_svg_file(const char *filename)
{
 u64 i;
 int count;

 numcpus++;


 count = determine_display_tasks(TIME_THRESH);


 if (count < 15)
  count = determine_display_tasks(TIME_THRESH / 10);

 open_svg(filename, numcpus, count, first_time, last_time);

 svg_time_grid();
 svg_legenda();

 for (i = 0; i < numcpus; i++)
  svg_cpu_box(i, max_freq, turbo_frequency);

 draw_cpu_usage();
 draw_process_bars();
 draw_c_p_states();
 draw_wakeups();

 svg_close();
}
