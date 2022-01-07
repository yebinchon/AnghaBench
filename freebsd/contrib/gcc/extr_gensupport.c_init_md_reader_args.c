
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_md_reader_args_cb (int,char**,int ) ;

int
init_md_reader_args (int argc, char **argv)
{
  return init_md_reader_args_cb (argc, argv, 0);
}
