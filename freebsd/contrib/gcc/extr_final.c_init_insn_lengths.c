
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSN_ADDRESSES_FREE () ;
 int free (scalar_t__) ;
 scalar_t__ insn_lengths ;
 scalar_t__ insn_lengths_max_uid ;
 scalar_t__ uid_align ;
 scalar_t__ uid_shuid ;

void
init_insn_lengths (void)
{
  if (uid_shuid)
    {
      free (uid_shuid);
      uid_shuid = 0;
    }
  if (insn_lengths)
    {
      free (insn_lengths);
      insn_lengths = 0;
      insn_lengths_max_uid = 0;
    }



  if (uid_align)
    {
      free (uid_align);
      uid_align = 0;
    }
}
