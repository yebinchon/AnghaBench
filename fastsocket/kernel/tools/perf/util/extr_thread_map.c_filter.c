
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;



__attribute__((used)) static int filter(const struct dirent *dir)
{
 if (dir->d_name[0] == '.')
  return 0;
 else
  return 1;
}
