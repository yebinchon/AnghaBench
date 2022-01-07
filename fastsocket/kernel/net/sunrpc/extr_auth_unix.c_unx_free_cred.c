
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unx_cred {int dummy; } ;


 int dprintk (char*,struct unx_cred*) ;
 int kfree (struct unx_cred*) ;

__attribute__((used)) static void
unx_free_cred(struct unx_cred *unx_cred)
{
 dprintk("RPC:       unx_free_cred %p\n", unx_cred);
 kfree(unx_cred);
}
