
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int val; int * vtable; } ;
typedef TYPE_1__ br_sha1_context ;


 int br_sha1_IV ;
 int br_sha1_vtable ;
 int memcpy (int ,int ,int) ;

void
br_sha1_init(br_sha1_context *cc)
{
 cc->vtable = &br_sha1_vtable;
 memcpy(cc->val, br_sha1_IV, sizeof cc->val);
 cc->count = 0;
}
