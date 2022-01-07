
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_mtime; } ;
typedef int FILE ;


 int clocktime (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static FILE *
file_open(char *map, time_t *tp)
{
  FILE *mapf = fopen(map, "r");

  if (mapf && tp) {
    struct stat stb;
    if (fstat(fileno(mapf), &stb) < 0)
      *tp = clocktime(((void*)0));
    else
      *tp = stb.st_mtime;
  }
  return mapf;
}
