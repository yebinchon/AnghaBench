
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs3_createdata {int dummy; } ;


 int kfree (struct nfs3_createdata*) ;

__attribute__((used)) static void nfs3_free_createdata(struct nfs3_createdata *data)
{
 kfree(data);
}
