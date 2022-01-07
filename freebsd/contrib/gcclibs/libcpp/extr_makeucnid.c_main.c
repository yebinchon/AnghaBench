
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail (char*) ;
 int read_derived (char*) ;
 int read_table (char*) ;
 int read_ucnid (char*) ;
 int write_copyright () ;
 int write_table () ;

int
main(int argc, char ** argv)
{
  if (argc != 4)
    fail ("too few arguments to makeucn");
  read_ucnid (argv[1]);
  read_table (argv[2]);
  read_derived (argv[3]);

  write_copyright ();
  write_table ();
  return 0;
}
