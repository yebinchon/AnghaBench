
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 int Dir_AddDir (int ,char*) ;

__attribute__((used)) static int
ParseAddDir(void *path, void *name)
{
    (void)Dir_AddDir((Lst) path, (char *)name);
    return(0);
}
