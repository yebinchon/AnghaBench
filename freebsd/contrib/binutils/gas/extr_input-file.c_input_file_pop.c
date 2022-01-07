
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_file {int app_save; scalar_t__ preprocess; int file_name; int f_in; } ;


 int app_pop (int ) ;
 int f_in ;
 int file_name ;
 int free (char*) ;
 int input_file_end () ;
 scalar_t__ preprocess ;

void
input_file_pop (char *arg)
{
  register struct saved_file *saved = (struct saved_file *) arg;

  input_file_end ();

  f_in = saved->f_in;
  file_name = saved->file_name;
  preprocess = saved->preprocess;
  if (preprocess)
    app_pop (saved->app_save);

  free (arg);
}
