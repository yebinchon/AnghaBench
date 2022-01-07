
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int status; } ;


 int IPCT_DESTROY ;
 int IPS_DYING_BIT ;
 scalar_t__ nf_conntrack_event (int ,struct nf_conn*) ;
 int nf_ct_delete_from_lists (struct nf_conn*) ;
 int nf_ct_insert_dying_list (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void death_by_timeout(unsigned long ul_conntrack)
{
 struct nf_conn *ct = (void *)ul_conntrack;

 if (!test_bit(IPS_DYING_BIT, &ct->status) &&
     unlikely(nf_conntrack_event(IPCT_DESTROY, ct) < 0)) {

  nf_ct_delete_from_lists(ct);
  nf_ct_insert_dying_list(ct);
  return;
 }
 set_bit(IPS_DYING_BIT, &ct->status);
 nf_ct_delete_from_lists(ct);
 nf_ct_put(ct);
}
