
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;


 scalar_t__ ext4_handle_valid (int *) ;
 int jbd2_journal_extend (int *,int) ;

__attribute__((used)) static inline int ext4_journal_extend(handle_t *handle, int nblocks)
{
 if (ext4_handle_valid(handle))
  return jbd2_journal_extend(handle, nblocks);
 return 0;
}
