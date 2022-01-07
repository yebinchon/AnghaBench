
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;

__attribute__((used)) static void
free_split_directories (char **dirs)
{
  int i = 0;

  while (dirs[i] != ((void*)0))
    free (dirs[i++]);

  free ((char *) dirs);
}
