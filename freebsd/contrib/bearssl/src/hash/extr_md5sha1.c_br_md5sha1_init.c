
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int val_sha1; int val_md5; int * vtable; } ;
typedef TYPE_1__ br_md5sha1_context ;


 int br_md5_IV ;
 int br_md5sha1_vtable ;
 int br_sha1_IV ;
 int memcpy (int ,int ,int) ;

void
br_md5sha1_init(br_md5sha1_context *cc)
{
 cc->vtable = &br_md5sha1_vtable;
 memcpy(cc->val_md5, br_md5_IV, sizeof cc->val_md5);
 memcpy(cc->val_sha1, br_sha1_IV, sizeof cc->val_sha1);
 cc->count = 0;
}
