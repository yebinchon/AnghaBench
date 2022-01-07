
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ccid_id; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int ENOBUFS ;
 TYPE_1__** ccids ;
 int gfp_any () ;
 int* kmalloc (int,int ) ;

int ccid_get_builtin_ccids(u8 **ccid_array, u8 *array_len)
{
 *ccid_array = kmalloc(ARRAY_SIZE(ccids), gfp_any());
 if (*ccid_array == ((void*)0))
  return -ENOBUFS;

 for (*array_len = 0; *array_len < ARRAY_SIZE(ccids); *array_len += 1)
  (*ccid_array)[*array_len] = ccids[*array_len]->ccid_id;
 return 0;
}
