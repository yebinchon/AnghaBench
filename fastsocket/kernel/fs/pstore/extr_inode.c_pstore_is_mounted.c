
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pstore_sb ;

int pstore_is_mounted(void)
{
 return pstore_sb != ((void*)0);
}
