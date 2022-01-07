
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;


 struct data data_append_align (struct data,int) ;

__attribute__((used)) static void bin_emit_align(void *e, int a)
{
 struct data *dtbuf = e;

 *dtbuf = data_append_align(*dtbuf, a);
}
