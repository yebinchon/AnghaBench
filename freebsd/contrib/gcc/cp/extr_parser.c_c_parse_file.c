
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cp_parser_new () ;
 int cp_parser_translation_unit (int *) ;
 int dk_no_check ;
 int dk_no_deferred ;
 scalar_t__ flag_access_control ;
 int push_deferring_access_checks (int ) ;
 int sorry (char*) ;
 int * the_parser ;

void
c_parse_file (void)
{
  bool error_occurred;
  static bool already_called = 0;

  if (already_called)
    {
      sorry ("inter-module optimizations not implemented for C++");
      return;
    }
  already_called = 1;

  the_parser = cp_parser_new ();
  push_deferring_access_checks (flag_access_control
    ? dk_no_deferred : dk_no_check);
  error_occurred = cp_parser_translation_unit (the_parser);
  the_parser = ((void*)0);
}
