
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int NV_UNIQUE_NAME ;
 int VERIFY (int) ;
 scalar_t__ nvlist_add_uint64 (int *,char*,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ ztest_random (int) ;

__attribute__((used)) static nvlist_t *
make_random_props()
{
 nvlist_t *props;

 VERIFY(nvlist_alloc(&props, NV_UNIQUE_NAME, 0) == 0);
 if (ztest_random(2) == 0)
  return (props);
 VERIFY(nvlist_add_uint64(props, "autoreplace", 1) == 0);

 return (props);
}
