
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_ematch_tree_hdr {int nmatches; } ;
struct tcf_ematch_tree {int * matches; int hdr; } ;
struct tcf_ematch_hdr {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct nlattr {int nla_type; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 size_t TCA_EMATCH_TREE_HDR ;
 size_t TCA_EMATCH_TREE_LIST ;
 int TCA_EMATCH_TREE_MAX ;
 int em_policy ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,struct tcf_ematch_tree_hdr*,int) ;
 int memset (struct tcf_ematch_tree*,int ,int) ;
 void* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct nlattr* nla_next (struct nlattr*,int*) ;
 scalar_t__ nla_ok (struct nlattr*,int) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ) ;
 struct tcf_ematch* tcf_em_get_match (struct tcf_ematch_tree*,int) ;
 int tcf_em_tree_destroy (struct tcf_proto*,struct tcf_ematch_tree*) ;
 int tcf_em_validate (struct tcf_proto*,struct tcf_ematch_tree_hdr*,struct tcf_ematch*,struct nlattr*,int) ;

int tcf_em_tree_validate(struct tcf_proto *tp, struct nlattr *nla,
    struct tcf_ematch_tree *tree)
{
 int idx, list_len, matches_len, err;
 struct nlattr *tb[TCA_EMATCH_TREE_MAX + 1];
 struct nlattr *rt_match, *rt_hdr, *rt_list;
 struct tcf_ematch_tree_hdr *tree_hdr;
 struct tcf_ematch *em;

 memset(tree, 0, sizeof(*tree));
 if (!nla)
  return 0;

 err = nla_parse_nested(tb, TCA_EMATCH_TREE_MAX, nla, em_policy);
 if (err < 0)
  goto errout;

 err = -EINVAL;
 rt_hdr = tb[TCA_EMATCH_TREE_HDR];
 rt_list = tb[TCA_EMATCH_TREE_LIST];

 if (rt_hdr == ((void*)0) || rt_list == ((void*)0))
  goto errout;

 tree_hdr = nla_data(rt_hdr);
 memcpy(&tree->hdr, tree_hdr, sizeof(*tree_hdr));

 rt_match = nla_data(rt_list);
 list_len = nla_len(rt_list);
 matches_len = tree_hdr->nmatches * sizeof(*em);

 tree->matches = kzalloc(matches_len, GFP_KERNEL);
 if (tree->matches == ((void*)0))
  goto errout;
 for (idx = 0; nla_ok(rt_match, list_len); idx++) {
  err = -EINVAL;

  if (rt_match->nla_type != (idx + 1))
   goto errout_abort;

  if (idx >= tree_hdr->nmatches)
   goto errout_abort;

  if (nla_len(rt_match) < sizeof(struct tcf_ematch_hdr))
   goto errout_abort;

  em = tcf_em_get_match(tree, idx);

  err = tcf_em_validate(tp, tree_hdr, em, rt_match, idx);
  if (err < 0)
   goto errout_abort;

  rt_match = nla_next(rt_match, &list_len);
 }





 if (idx != tree_hdr->nmatches) {
  err = -EINVAL;
  goto errout_abort;
 }

 err = 0;
errout:
 return err;

errout_abort:
 tcf_em_tree_destroy(tp, tree);
 return err;
}
