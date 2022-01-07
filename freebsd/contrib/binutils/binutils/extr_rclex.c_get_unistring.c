
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;


 scalar_t__ get_string (int) ;

__attribute__((used)) static unichar *
get_unistring (int len)
{
  return (unichar *) get_string (len * sizeof (unichar));
}
