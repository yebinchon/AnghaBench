
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_client {scalar_t__ max_tag; int * tagpool; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * p9_idpool_create () ;
 int p9_idpool_get (int *) ;

__attribute__((used)) static int p9_tag_init(struct p9_client *c)
{
 int err = 0;

 c->tagpool = p9_idpool_create();
 if (IS_ERR(c->tagpool)) {
  err = PTR_ERR(c->tagpool);
  c->tagpool = ((void*)0);
  goto error;
 }

 p9_idpool_get(c->tagpool);

 c->max_tag = 0;
error:
 return err;
}
