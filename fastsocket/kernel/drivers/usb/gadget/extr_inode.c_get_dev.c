
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_data {int count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void get_dev (struct dev_data *data)
{
 atomic_inc (&data->count);
}
