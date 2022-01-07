
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileloc {int dummy; } ;


 int create_scalar_type (char const*,int ) ;
 int do_typedef (char const*,int ,struct fileloc*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
do_scalar_typedef (const char *s, struct fileloc *pos)
{
  do_typedef (s, create_scalar_type (s, strlen (s)), pos);
}
