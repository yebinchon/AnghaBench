
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* backslashable ;
 int host_char_to_target (int ,int*) ;
 int * represented ;
 char* strchr (char const*,int) ;

__attribute__((used)) static int
default_c_parse_backslash (void *baton, int host_char, int *target_char)
{
  const char *ix;

  ix = strchr (backslashable, host_char);

  if (! ix)
    return 0;
  else
    return host_char_to_target (represented[ix - backslashable],
                                target_char);
}
