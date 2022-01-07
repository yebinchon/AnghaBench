
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int len_config ;
 int perror (char*) ;
 int * realloc (int *,int) ;
 int size_config ;
 int * str_config ;

__attribute__((used)) static void grow_config(int len)
{
 while (len_config + len > size_config) {
  if (size_config == 0)
   size_config = 2048;
  str_config = realloc(str_config, size_config *= 2);
  if (str_config == ((void*)0))
   { perror("fixdep:malloc"); exit(1); }
 }
}
