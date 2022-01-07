
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fatal_with_file_and_line (int *,char*,int,int) ;

__attribute__((used)) static void
fatal_expected_char (FILE *infile, int expected_c, int actual_c)
{
  fatal_with_file_and_line (infile, "expected character `%c', found `%c'",
       expected_c, actual_c);
}
