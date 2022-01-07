
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int orph_lebs; int leb_size; } ;
typedef int __le64 ;


 int UBIFS_ORPH_NODE_SZ ;

__attribute__((used)) static int tot_avail_orphs(struct ubifs_info *c)
{
 int avail_lebs, avail;

 avail_lebs = c->orph_lebs;
 avail = avail_lebs *
        ((c->leb_size - UBIFS_ORPH_NODE_SZ) / sizeof(__le64));
 return avail / 2;
}
