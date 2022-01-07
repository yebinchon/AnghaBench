
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int t_id; } ;
typedef TYPE_2__ tdesc_t ;
struct TYPE_7__ {int rmd_map; TYPE_1__* rmd_tgt; } ;
typedef TYPE_3__ redir_mstr_data_t ;
struct TYPE_5__ {int td_idhash; } ;


 int aborterr (char*,int,int ) ;
 int alist_add (int ,void*,void*) ;
 int debug (int,char*,int,int ) ;
 int hash_find (int ,void*,void*) ;
 int tdesc_name (TYPE_2__*) ;

__attribute__((used)) static int
redir_mstr_fwd_cb(void *name, void *value, void *arg)
{
 tdesc_t *fwd = name;
 int defnid = (uintptr_t)value;
 redir_mstr_data_t *rmd = arg;
 tdesc_t template;
 tdesc_t *defn;

 template.t_id = defnid;

 if (!hash_find(rmd->rmd_tgt->td_idhash, (void *)&template,
     (void *)&defn)) {
  aborterr("Couldn't unforward %d (%s)\n", defnid,
      tdesc_name(defn));
 }

 debug(3, "Forward map: resolved %d to %s\n", defnid, tdesc_name(defn));

 alist_add(rmd->rmd_map, (void *)fwd, (void *)defn);

 return (1);
}
