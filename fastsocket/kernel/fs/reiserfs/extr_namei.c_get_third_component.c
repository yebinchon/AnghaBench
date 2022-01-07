
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int (* s_hash_function ) (char const*,int) ;} ;


 int DOT_DOT_OFFSET ;
 int DOT_OFFSET ;
 int GET_HASH_VALUE (int) ;
 int MAX_GENERATION_NUMBER ;
 TYPE_1__* REISERFS_SB (struct super_block*) ;
 int stub1 (char const*,int) ;

__attribute__((used)) static __u32 get_third_component(struct super_block *s,
     const char *name, int len)
{
 __u32 res;

 if (!len || (len == 1 && name[0] == '.'))
  return DOT_OFFSET;
 if (len == 2 && name[0] == '.' && name[1] == '.')
  return DOT_DOT_OFFSET;

 res = REISERFS_SB(s)->s_hash_function(name, len);


 res = GET_HASH_VALUE(res);
 if (res == 0)


  res = 128;
 return res + MAX_GENERATION_NUMBER;
}
