
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ip_set_id_t ;


 int __ip_set_put (size_t) ;
 int ** ip_set_list ;

void
ip_set_put_byindex(ip_set_id_t index)
{
 if (ip_set_list[index] != ((void*)0))
  __ip_set_put(index);
}
