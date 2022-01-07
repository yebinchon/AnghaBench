
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int len; int val; } ;


 struct data data_grow_for (int ,int) ;
 int empty_data ;
 int memcpy (int ,char const*,int) ;

struct data data_copy_mem(const char *mem, int len)
{
 struct data d;

 d = data_grow_for(empty_data, len);

 d.len = len;
 memcpy(d.val, mem, len);

 return d;
}
