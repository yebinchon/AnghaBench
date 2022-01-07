
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL_EXIT_CODE ;
 int exit (int ) ;
 int notice (char*,int ,int ) ;
 int pname ;

__attribute__((used)) static void
usage (void)
{




  notice ("%s: usage '%s [ -VqfnkNlgC ] [ -B <dirname> ] [ filename ... ]'\n",
   pname, pname);

  exit (FATAL_EXIT_CODE);
}
