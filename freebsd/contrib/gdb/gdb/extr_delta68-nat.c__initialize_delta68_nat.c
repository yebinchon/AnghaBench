
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlist {char* n_name; scalar_t__ n_scnum; int n_value; } ;


 int exit (int) ;
 int kernel_u_addr ;
 scalar_t__ nlist (char*,struct nlist*) ;
 int perror (char*) ;

void
_initialize_delta68_nat (void)
{
  struct nlist nl[2];

  nl[0].n_name = "u";
  nl[1].n_name = ((void*)0);
  if (nlist ("/sysV68", nl) == 0 && nl[0].n_scnum != 0)
    kernel_u_addr = nl[0].n_value;
  else
    {
      perror ("Cannot get kernel u area address");
      exit (1);
    }
}
