
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static inline const char *basename(const char *path)
{
 const char *tail = strrchr(path, '/');
 return tail ? tail+1 : path;
}
