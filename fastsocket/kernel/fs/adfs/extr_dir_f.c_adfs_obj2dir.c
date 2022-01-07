
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int attr; int size; int execaddr; int loadaddr; int file_id; } ;
struct adfs_direntry {int newdiratts; int dirlen; int direxec; int dirload; int dirinddiscadd; } ;


 int adfs_writeval (int ,int,int ) ;

__attribute__((used)) static inline void
adfs_obj2dir(struct adfs_direntry *de, struct object_info *obj)
{
 adfs_writeval(de->dirinddiscadd, 3, obj->file_id);
 adfs_writeval(de->dirload, 4, obj->loadaddr);
 adfs_writeval(de->direxec, 4, obj->execaddr);
 adfs_writeval(de->dirlen, 4, obj->size);
 de->newdiratts = obj->attr;
}
