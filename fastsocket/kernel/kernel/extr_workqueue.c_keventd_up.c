
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * keventd_wq ;

int keventd_up(void)
{
 return keventd_wq != ((void*)0);
}
