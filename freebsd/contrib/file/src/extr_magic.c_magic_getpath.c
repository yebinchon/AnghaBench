
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_LOAD ;
 char const* MAGIC ;
 char const* get_default_magic () ;
 char* getenv (char*) ;

const char *
magic_getpath(const char *magicfile, int action)
{
 if (magicfile != ((void*)0))
  return magicfile;

 magicfile = getenv("MAGIC");
 if (magicfile != ((void*)0))
  return magicfile;

 return action == FILE_LOAD ? get_default_magic() : MAGIC;
}
