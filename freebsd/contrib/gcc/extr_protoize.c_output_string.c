
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_bytes (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
output_string (const char *str)
{
  output_bytes (str, strlen (str));
}
