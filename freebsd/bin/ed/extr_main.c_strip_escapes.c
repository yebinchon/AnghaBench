
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int REALLOC (char*,int,int ,int *) ;

char *
strip_escapes(char *s)
{
 static char *file = ((void*)0);
 static int filesz = 0;

 int i = 0;

 REALLOC(file, filesz, PATH_MAX, ((void*)0));
 while (i < filesz - 1
        && (file[i++] = (*s == '\\') ? *++s : *s))
  s++;
 return file;
}
