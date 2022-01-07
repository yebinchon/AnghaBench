
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;


 int PATH_MAX ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
samedirent(const char *path1, const char *path2)
{
 const char *file1, *file2;
 char pathbuf[PATH_MAX];
 struct stat sb1, sb2;

 if (strcmp(path1, path2) == 0)
  return 1;
 file1 = strrchr(path1, '/');
 if (file1 != ((void*)0))
  file1++;
 else
  file1 = path1;
 file2 = strrchr(path2, '/');
 if (file2 != ((void*)0))
  file2++;
 else
  file2 = path2;
 if (strcmp(file1, file2) != 0)
  return 0;
 if (file1 - path1 >= PATH_MAX || file2 - path2 >= PATH_MAX)
  return 0;
 if (file1 == path1)
  memcpy(pathbuf, ".", 2);
 else {
  memcpy(pathbuf, path1, file1 - path1);
  pathbuf[file1 - path1] = '\0';
 }
 if (stat(pathbuf, &sb1) != 0)
  return 0;
 if (file2 == path2)
  memcpy(pathbuf, ".", 2);
 else {
  memcpy(pathbuf, path2, file2 - path2);
  pathbuf[file2 - path2] = '\0';
 }
 if (stat(pathbuf, &sb2) != 0)
  return 0;
 return sb1.st_dev == sb2.st_dev && sb1.st_ino == sb2.st_ino;
}
