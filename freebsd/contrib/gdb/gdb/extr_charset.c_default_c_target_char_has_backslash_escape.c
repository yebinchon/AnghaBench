
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** backslashed ;
 char const* represented ;
 char* strchr (char const*,int) ;
 int target_char_to_host (int,int*) ;

__attribute__((used)) static const char *
default_c_target_char_has_backslash_escape (void *baton, int target_char)
{
  int host_char;
  const char *ix;



  if (! target_char_to_host (target_char, &host_char))
    return ((void*)0);

  ix = strchr (represented, host_char);
  if (ix)
    return backslashed[ix - represented];
  else
    return ((void*)0);
}
