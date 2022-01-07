
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd ;


 int print_arelt_descr (int ,int *,int ) ;
 int stdout ;
 int verbose ;

__attribute__((used)) static void
print_descr (bfd *abfd)
{
  print_arelt_descr (stdout, abfd, verbose);
}
