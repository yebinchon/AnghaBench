
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; int val; int * vtable; } ;
typedef TYPE_1__ br_sha384_context ;


 int IV384 ;
 int br_sha384_vtable ;
 int memcpy (int ,int ,int) ;

void
br_sha384_init(br_sha384_context *cc)
{
 cc->vtable = &br_sha384_vtable;
 memcpy(cc->val, IV384, sizeof IV384);
 cc->count = 0;
}
