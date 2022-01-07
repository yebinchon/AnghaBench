
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rec_len; } ;
typedef TYPE_1__ ext2_dirent ;


 int ext2_rec_len_from_disk (int ) ;

__attribute__((used)) static inline ext2_dirent *ext2_next_entry(ext2_dirent *p)
{
 return (ext2_dirent *)((char *)p +
   ext2_rec_len_from_disk(p->rec_len));
}
