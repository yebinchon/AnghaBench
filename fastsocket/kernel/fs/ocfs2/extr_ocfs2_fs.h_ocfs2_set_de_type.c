
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t umode_t ;
struct ocfs2_dir_entry {int file_type; } ;


 size_t S_IFMT ;
 size_t S_SHIFT ;
 int * ocfs2_type_by_mode ;

__attribute__((used)) static inline void ocfs2_set_de_type(struct ocfs2_dir_entry *de,
        umode_t mode)
{
 de->file_type = ocfs2_type_by_mode[(mode & S_IFMT)>>S_SHIFT];
}
