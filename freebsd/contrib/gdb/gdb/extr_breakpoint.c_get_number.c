
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_number_trailer (char**,char) ;

int
get_number (char **pp)
{
  return get_number_trailer (pp, '\0');
}
