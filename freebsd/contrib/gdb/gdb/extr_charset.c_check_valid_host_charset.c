
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charset {int name; int valid_host_charset; } ;


 int error (char*,int ) ;

__attribute__((used)) static void
check_valid_host_charset (struct charset *cs)
{
  if (! cs->valid_host_charset)
    error ("GDB can't use `%s' as its host character set.", cs->name);
}
