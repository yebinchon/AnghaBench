
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {scalar_t__ len; scalar_t__ val; } ;


 struct data data_grow_for (struct data,int) ;
 int memcpy (scalar_t__,void const*,int) ;

struct data data_append_data(struct data d, const void *p, int len)
{
 d = data_grow_for(d, len);
 memcpy(d.val + d.len, p, len);
 d.len += len;
 return d;
}
