
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {scalar_t__ len; } ;


 int ALIGN (scalar_t__,int) ;
 struct data data_append_zeroes (struct data,scalar_t__) ;

struct data data_append_align(struct data d, int align)
{
 int newlen = ALIGN(d.len, align);
 return data_append_zeroes(d, newlen - d.len);
}
