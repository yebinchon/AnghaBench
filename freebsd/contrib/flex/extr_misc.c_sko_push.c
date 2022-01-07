
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sko_state {int dc; } ;


 int _ (char*) ;
 scalar_t__ flex_alloc (int) ;
 scalar_t__ flex_realloc (struct sko_state*,int) ;
 int flexfatal (int ) ;
 int sko_len ;
 struct sko_state* sko_stack ;
 int sko_sz ;

__attribute__((used)) static void sko_push(bool dc)
{
    if(!sko_stack){
        sko_sz = 1;
        sko_stack = (struct sko_state*)flex_alloc(sizeof(struct sko_state)*sko_sz);
        if (!sko_stack)
            flexfatal(_("allocation of sko_stack failed"));
        sko_len = 0;
    }
    if(sko_len >= sko_sz){
        sko_sz *= 2;
        sko_stack = (struct sko_state*)flex_realloc(sko_stack,sizeof(struct sko_state)*sko_sz);
    }


    sko_stack[sko_len].dc = dc;
    sko_len++;
}
