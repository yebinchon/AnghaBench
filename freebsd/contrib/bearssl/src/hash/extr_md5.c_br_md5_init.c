
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int val; int * vtable; } ;
typedef TYPE_1__ br_md5_context ;


 int br_md5_IV ;
 int br_md5_vtable ;
 int memcpy (int ,int ,int) ;

void
br_md5_init(br_md5_context *cc)
{
 cc->vtable = &br_md5_vtable;
 memcpy(cc->val, br_md5_IV, sizeof cc->val);
 cc->count = 0;
}
