
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref_info {unsigned int refs_size; scalar_t__ refs; } ;
struct df_ref {int dummy; } ;


 int memset (scalar_t__,int ,unsigned int) ;
 scalar_t__ xrealloc (scalar_t__,unsigned int) ;

__attribute__((used)) static void
df_grow_ref_info (struct df_ref_info *ref_info, unsigned int new_size)
{
  if (ref_info->refs_size < new_size)
    {
      ref_info->refs = xrealloc (ref_info->refs,
     new_size *sizeof (struct df_ref *));
      memset (ref_info->refs + ref_info->refs_size, 0,
       (new_size - ref_info->refs_size) *sizeof (struct df_ref *));
      ref_info->refs_size = new_size;
    }
}
