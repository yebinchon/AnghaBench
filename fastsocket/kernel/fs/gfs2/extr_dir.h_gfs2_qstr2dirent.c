
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qstr {int len; int name; int hash; } ;
struct TYPE_2__ {void* no_formal_ino; void* no_addr; } ;
struct gfs2_dirent {int __pad; void* de_type; void* de_name_len; void* de_rec_len; int de_hash; TYPE_1__ de_inum; } ;


 void* cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int ) ;
 int memcpy (struct gfs2_dirent*,int ,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static inline void gfs2_qstr2dirent(const struct qstr *name, u16 reclen, struct gfs2_dirent *dent)
{
 dent->de_inum.no_addr = cpu_to_be64(0);
 dent->de_inum.no_formal_ino = cpu_to_be64(0);
 dent->de_hash = cpu_to_be32(name->hash);
 dent->de_rec_len = cpu_to_be16(reclen);
 dent->de_name_len = cpu_to_be16(name->len);
 dent->de_type = cpu_to_be16(0);
 memset(dent->__pad, 0, sizeof(dent->__pad));
 memcpy(dent + 1, name->name, name->len);
}
