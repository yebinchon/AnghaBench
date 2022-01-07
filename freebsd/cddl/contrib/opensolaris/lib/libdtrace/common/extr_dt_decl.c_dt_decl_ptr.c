
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dt_decl_t ;


 int CTF_K_POINTER ;
 int dt_decl_alloc (int ,int *) ;
 int * dt_decl_push (int ) ;

dt_decl_t *
dt_decl_ptr(void)
{
 return (dt_decl_push(dt_decl_alloc(CTF_K_POINTER, ((void*)0))));
}
