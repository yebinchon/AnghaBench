
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 int list_count_cb ;
 int list_iter (int *,int ,int *) ;

int
list_count(list_t *list)
{
 return (list_iter(list, list_count_cb, ((void*)0)));
}
