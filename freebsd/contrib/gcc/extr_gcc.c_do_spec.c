
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * argbuf ;
 int argbuf_index ;
 int do_spec_2 (char const*) ;
 int execute () ;
 int set_collect_gcc_options () ;
 int strcmp (int ,char*) ;

int
do_spec (const char *spec)
{
  int value;

  value = do_spec_2 (spec);



  if (value == 0)
    {
      if (argbuf_index > 0 && !strcmp (argbuf[argbuf_index - 1], "|"))
 argbuf_index--;

      set_collect_gcc_options ();

      if (argbuf_index > 0)
 value = execute ();
    }

  return value;
}
