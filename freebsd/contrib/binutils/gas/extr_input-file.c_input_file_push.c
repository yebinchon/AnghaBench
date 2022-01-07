
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_file {int app_save; scalar_t__ preprocess; int file_name; int f_in; } ;


 int app_push () ;
 int f_in ;
 int file_name ;
 int input_file_begin () ;
 scalar_t__ preprocess ;
 scalar_t__ xmalloc (int) ;

char *
input_file_push (void)
{
  register struct saved_file *saved;

  saved = (struct saved_file *) xmalloc (sizeof *saved);

  saved->f_in = f_in;
  saved->file_name = file_name;
  saved->preprocess = preprocess;
  if (preprocess)
    saved->app_save = app_push ();


  input_file_begin ();

  return (char *) saved;
}
