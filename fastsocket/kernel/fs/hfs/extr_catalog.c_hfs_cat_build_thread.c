
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct hfs_cat_thread {int dummy; } ;
struct TYPE_4__ {int CName; int ParID; int reserved; } ;
struct TYPE_5__ {int type; TYPE_1__ thread; } ;
typedef TYPE_2__ hfs_cat_rec ;


 int cpu_to_be32 (int ) ;
 int hfs_asc2mac (struct super_block*,int *,struct qstr*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int hfs_cat_build_thread(struct super_block *sb,
    hfs_cat_rec *rec, int type,
    u32 parentid, struct qstr *name)
{
 rec->type = type;
 memset(rec->thread.reserved, 0, sizeof(rec->thread.reserved));
 rec->thread.ParID = cpu_to_be32(parentid);
 hfs_asc2mac(sb, &rec->thread.CName, name);
 return sizeof(struct hfs_cat_thread);
}
