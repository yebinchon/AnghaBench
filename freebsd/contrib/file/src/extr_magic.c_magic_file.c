
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 int STDIN_FILENO ;
 char const* file_or_fd (struct magic_set*,char const*,int ) ;

const char *
magic_file(struct magic_set *ms, const char *inname)
{
 if (ms == ((void*)0))
  return ((void*)0);
 return file_or_fd(ms, inname, STDIN_FILENO);
}
