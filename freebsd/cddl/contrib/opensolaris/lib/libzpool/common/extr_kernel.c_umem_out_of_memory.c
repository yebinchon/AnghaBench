
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errmsg ;


 int abort () ;
 int fileno (int ) ;
 int stderr ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
umem_out_of_memory(void)
{
 char errmsg[] = "out of memory -- generating core dump\n";

 write(fileno(stderr), errmsg, sizeof (errmsg));
 abort();
 return (0);
}
