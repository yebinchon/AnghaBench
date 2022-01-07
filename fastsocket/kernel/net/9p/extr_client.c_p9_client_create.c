
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p9_client {scalar_t__ msize; TYPE_1__* trans_mod; int dotu; int * fidpool; int fidlist; int lock; int * trans; } ;
struct TYPE_2__ {int (* create ) (struct p9_client*,char const*,char*) ;scalar_t__ maxsize; } ;


 int ENOMEM ;
 int EPROTONOSUPPORT ;
 struct p9_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int *) ;
 int P9_DEBUG_ERROR ;
 int P9_DEBUG_MUX ;
 int P9_DPRINTK (int ,char*,...) ;
 scalar_t__ P9_IOHDRSZ ;
 int PTR_ERR (int *) ;
 struct p9_client* kmalloc (int,int ) ;
 int p9_client_destroy (struct p9_client*) ;
 int p9_client_version (struct p9_client*) ;
 int * p9_idpool_create () ;
 int p9_tag_init (struct p9_client*) ;
 int parse_opts (char*,struct p9_client*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct p9_client*,char const*,char*) ;
 TYPE_1__* v9fs_get_default_trans () ;

struct p9_client *p9_client_create(const char *dev_name, char *options)
{
 int err;
 struct p9_client *clnt;

 err = 0;
 clnt = kmalloc(sizeof(struct p9_client), GFP_KERNEL);
 if (!clnt)
  return ERR_PTR(-ENOMEM);

 clnt->trans_mod = ((void*)0);
 clnt->trans = ((void*)0);
 spin_lock_init(&clnt->lock);
 INIT_LIST_HEAD(&clnt->fidlist);
 clnt->fidpool = p9_idpool_create();
 if (IS_ERR(clnt->fidpool)) {
  err = PTR_ERR(clnt->fidpool);
  clnt->fidpool = ((void*)0);
  goto error;
 }

 p9_tag_init(clnt);

 err = parse_opts(options, clnt);
 if (err < 0)
  goto error;

 if (!clnt->trans_mod)
  clnt->trans_mod = v9fs_get_default_trans();

 if (clnt->trans_mod == ((void*)0)) {
  err = -EPROTONOSUPPORT;
  P9_DPRINTK(P9_DEBUG_ERROR,
    "No transport defined or default transport\n");
  goto error;
 }

 P9_DPRINTK(P9_DEBUG_MUX, "clnt %p trans %p msize %d dotu %d\n",
  clnt, clnt->trans_mod, clnt->msize, clnt->dotu);

 err = clnt->trans_mod->create(clnt, dev_name, options);
 if (err)
  goto error;

 if ((clnt->msize+P9_IOHDRSZ) > clnt->trans_mod->maxsize)
  clnt->msize = clnt->trans_mod->maxsize-P9_IOHDRSZ;

 err = p9_client_version(clnt);
 if (err)
  goto error;

 return clnt;

error:
 p9_client_destroy(clnt);
 return ERR_PTR(err);
}
