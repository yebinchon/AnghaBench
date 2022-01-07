
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct data {int dummy; } ;


 struct data data_append_data (struct data,int *,int) ;

struct data data_append_byte(struct data d, uint8_t byte)
{
 return data_append_data(d, &byte, 1);
}
