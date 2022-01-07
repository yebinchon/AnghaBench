
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int val; int * vtable; } ;
typedef TYPE_1__ br_sha512_context ;


 int IV512 ;
 int br_sha512_vtable ;
 int memcpy (int ,int ,int) ;

void
br_sha512_init(br_sha512_context *cc)
{
 cc->vtable = &br_sha512_vtable;
 memcpy(cc->val, IV512, sizeof IV512);
 cc->count = 0;
}
