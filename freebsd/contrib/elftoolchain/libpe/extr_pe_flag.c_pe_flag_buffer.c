
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int sb_flags; } ;
typedef TYPE_1__ PE_SecBuf ;
typedef scalar_t__ PE_Cmd ;
typedef int PE_Buffer ;


 int EINVAL ;
 scalar_t__ PE_C_CLR ;
 scalar_t__ PE_C_SET ;
 unsigned int PE_F_DIRTY ;
 int errno ;

int
pe_flag_buffer(PE_Buffer *pb, PE_Cmd c, unsigned int flags)
{
 PE_SecBuf *sb;

 if (pb == ((void*)0) || (c != PE_C_SET && c != PE_C_CLR) ||
     (flags & ~PE_F_DIRTY) != 0) {
  errno = EINVAL;
  return (-1);
 }

 sb = (PE_SecBuf *) pb;

 if (c == PE_C_SET)
  sb->sb_flags |= flags;
 else
  sb->sb_flags &= ~flags;

 return (0);
}
