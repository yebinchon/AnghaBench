
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_file_name ;
 int output_file_close (int ) ;

__attribute__((used)) static void
close_output_file (void)
{
  output_file_close (out_file_name);
}
