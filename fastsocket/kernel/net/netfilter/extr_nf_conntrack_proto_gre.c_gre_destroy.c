
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {struct nf_conn* master; } ;


 int nf_ct_gre_keymap_destroy (struct nf_conn*) ;
 int pr_debug (char*) ;

__attribute__((used)) static void gre_destroy(struct nf_conn *ct)
{
 struct nf_conn *master = ct->master;
 pr_debug(" entering\n");

 if (!master)
  pr_debug("no master !?!\n");
 else
  nf_ct_gre_keymap_destroy(master);
}
