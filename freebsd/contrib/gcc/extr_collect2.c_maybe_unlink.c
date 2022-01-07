
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug ;
 int notice (char*,char const*) ;
 int unlink_if_ordinary (char const*) ;

__attribute__((used)) static void
maybe_unlink (const char *file)
{
  if (!debug)
    unlink_if_ordinary (file);
  else
    notice ("[Leaving %s]\n", file);
}
