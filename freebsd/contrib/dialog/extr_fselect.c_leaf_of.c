
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

__attribute__((used)) static char *
leaf_of(char *path)
{
    char *leaf = strrchr(path, '/');
    if (leaf != 0)
 leaf++;
    else
 leaf = path;
    return leaf;
}
