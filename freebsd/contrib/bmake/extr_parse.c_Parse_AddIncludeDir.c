
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Dir_AddDir (int ,char*) ;
 int parseIncPath ;

void
Parse_AddIncludeDir(char *dir)
{
    (void)Dir_AddDir(parseIncPath, dir);
}
