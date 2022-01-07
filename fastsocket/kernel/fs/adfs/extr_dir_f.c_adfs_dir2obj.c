
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int attr; void* size; void* execaddr; void* loadaddr; void* file_id; int name; int name_len; } ;
struct adfs_direntry {int newdiratts; int dirlen; int direxec; int dirload; int dirinddiscadd; int dirobname; } ;


 int ADFS_F_NAME_LEN ;
 int adfs_readname (int ,int ,int ) ;
 void* adfs_readval (int ,int) ;

__attribute__((used)) static inline void
adfs_dir2obj(struct object_info *obj, struct adfs_direntry *de)
{
 obj->name_len = adfs_readname(obj->name, de->dirobname, ADFS_F_NAME_LEN);
 obj->file_id = adfs_readval(de->dirinddiscadd, 3);
 obj->loadaddr = adfs_readval(de->dirload, 4);
 obj->execaddr = adfs_readval(de->direxec, 4);
 obj->size = adfs_readval(de->dirlen, 4);
 obj->attr = de->newdiratts;
}
