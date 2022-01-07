
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int DELETE_IF_ORDINARY (char const*,struct stat,int ) ;
 int EOF ;
 int fflush (int ) ;
 int getchar () ;
 int printf (char*,char const*) ;
 int stdout ;
 int verbose_flag ;

__attribute__((used)) static void
delete_if_ordinary (const char *name)
{
  struct stat st;
  DELETE_IF_ORDINARY (name, st, verbose_flag);
}
