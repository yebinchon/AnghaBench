
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 int abort () ;
 int errno ;
 int error (int ,int ,char*,char const*) ;

__attribute__((used)) static void
perror_with_exit (char const *string)
{
  error (EXIT_TROUBLE, errno, "%s", string);
  abort ();
}
