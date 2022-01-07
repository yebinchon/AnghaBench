
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checksigs () ;
 int errno ;
 int error (int ,int,char*,char const*) ;
 int exiterr () ;

__attribute__((used)) static void
perror_fatal (char const *msg)
{
  int e = errno;
  checksigs ();
  error (0, e, "%s", msg);
  exiterr ();
}
