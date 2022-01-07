
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct TYPE_2__ {int srb; int (* final_callback ) (int ) ;} ;


 int MTS_INT_INIT () ;
 TYPE_1__* context ;
 scalar_t__ likely (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void mts_transfer_cleanup( struct urb *transfer )

{
 MTS_INT_INIT();

 if ( likely(context->final_callback != ((void*)0)) )
  context->final_callback(context->srb);

}
