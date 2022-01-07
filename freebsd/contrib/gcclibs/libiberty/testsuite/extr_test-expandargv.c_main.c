
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int exit (int ) ;
 int run_tests (int ) ;
 int test_data ;

int
main(int argc, char **argv)
{
  int fails;
  fails = run_tests (test_data);
  if (!fails)
    exit (EXIT_SUCCESS);
  else
    exit (EXIT_FAILURE);
}
