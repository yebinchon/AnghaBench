
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; unsigned long long d_ino; } ;
typedef int DIR ;


 struct dirent* readdir (int *) ;
 int seekdir (int *,unsigned long long) ;
 int strlen (char*) ;
 unsigned long long telldir (int *) ;

char *read_dir(void *stream, unsigned long long *pos,
        unsigned long long *ino_out, int *len_out)
{
 DIR *dir = stream;
 struct dirent *ent;

 seekdir(dir, *pos);
 ent = readdir(dir);
 if (ent == ((void*)0))
  return ((void*)0);
 *len_out = strlen(ent->d_name);
 *ino_out = ent->d_ino;
 *pos = telldir(dir);
 return ent->d_name;
}
