
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,int,int) ;
 int scrub_string ;
 int scrub_string_end ;

__attribute__((used)) static int
scrub_from_string (char *buf, int buflen)
{
  int copy;

  copy = scrub_string_end - scrub_string;
  if (copy > buflen)
    copy = buflen;
  memcpy (buf, scrub_string, copy);
  scrub_string += copy;
  return copy;
}
