
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MANGLE_TRACE (char*,char const*) ;
 int write_string (char const*) ;

__attribute__((used)) static void
write_identifier (const char *identifier)
{
  MANGLE_TRACE ("identifier", identifier);
  write_string (identifier);
}
