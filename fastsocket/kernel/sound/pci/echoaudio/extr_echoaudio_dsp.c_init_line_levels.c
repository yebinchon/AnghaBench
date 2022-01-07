
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int DE_INIT (char*) ;
 int ECHOGAIN_MUTED ;
 int num_busses_in (struct echoaudio*) ;
 int num_busses_out (struct echoaudio*) ;
 int num_pipes_out (struct echoaudio*) ;
 int set_input_gain (struct echoaudio*,int,int ) ;
 int set_monitor_gain (struct echoaudio*,int,int,int ) ;
 int set_output_gain (struct echoaudio*,int,int ) ;
 int set_vmixer_gain (struct echoaudio*,int,int,int ) ;
 int update_input_line_level (struct echoaudio*) ;
 int update_output_line_level (struct echoaudio*) ;
 int update_vmixer_level (struct echoaudio*) ;

__attribute__((used)) static int init_line_levels(struct echoaudio *chip)
{
 int st, i, o;

 DE_INIT(("init_line_levels\n"));


 for (i = 0; i < num_busses_out(chip); i++)
  if ((st = set_output_gain(chip, i, ECHOGAIN_MUTED)))
   return st;
 if ((st = update_output_line_level(chip)))
  return st;
 return 0;
}
