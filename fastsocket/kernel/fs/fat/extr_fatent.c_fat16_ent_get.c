
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent16_p; } ;
struct fat_entry {TYPE_1__ u; } ;


 int BAD_FAT16 ;
 int FAT_ENT_EOF ;
 int WARN_ON (unsigned long) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int fat16_ent_get(struct fat_entry *fatent)
{
 int next = le16_to_cpu(*fatent->u.ent16_p);
 WARN_ON((unsigned long)fatent->u.ent16_p & (2 - 1));
 if (next >= BAD_FAT16)
  next = FAT_ENT_EOF;
 return next;
}
