
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int word ;
struct data {int dummy; } ;
typedef int cell_t ;


 struct data data_append_integer (struct data,int ,int) ;

struct data data_append_cell(struct data d, cell_t word)
{
 return data_append_integer(d, word, sizeof(word) * 8);
}
