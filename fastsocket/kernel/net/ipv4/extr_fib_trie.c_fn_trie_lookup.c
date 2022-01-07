
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int t_key ;
struct TYPE_2__ {int backtrack; int null_node_hit; int gets; } ;
struct trie {TYPE_1__ stats; int trie; } ;
struct tnode {int pos; int bits; int key; int * child; } ;
struct node {int dummy; } ;
struct leaf {int dummy; } ;
struct flowi {int fl4_dst; } ;
struct fib_table {scalar_t__ tb_data; } ;
struct fib_result {int dummy; } ;


 scalar_t__ IS_LEAF (struct node*) ;
 int KEYLENGTH ;
 int check_leaf (struct trie*,struct leaf*,int,struct flowi const*,struct fib_result*) ;
 int mask_pfx (int,int) ;
 struct tnode* node_parent_rcu (struct node*) ;
 int ntohl (int ) ;
 struct node* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tkey_extract_bits (int,int,int) ;
 struct node* tnode_get_child_rcu (struct tnode*,int) ;

__attribute__((used)) static int fn_trie_lookup(struct fib_table *tb, const struct flowi *flp,
     struct fib_result *res)
{
 struct trie *t = (struct trie *) tb->tb_data;
 int ret;
 struct node *n;
 struct tnode *pn;
 int pos, bits;
 t_key key = ntohl(flp->fl4_dst);
 int chopped_off;
 t_key cindex = 0;
 int current_prefix_length = KEYLENGTH;
 struct tnode *cn;
 t_key node_prefix, key_prefix, pref_mismatch;
 int mp;

 rcu_read_lock();

 n = rcu_dereference(t->trie);
 if (!n)
  goto failed;






 if (IS_LEAF(n)) {
  ret = check_leaf(t, (struct leaf *)n, key, flp, res);
  goto found;
 }

 pn = (struct tnode *) n;
 chopped_off = 0;

 while (pn) {
  pos = pn->pos;
  bits = pn->bits;

  if (!chopped_off)
   cindex = tkey_extract_bits(mask_pfx(key, current_prefix_length),
         pos, bits);

  n = tnode_get_child_rcu(pn, cindex);

  if (n == ((void*)0)) {



   goto backtrace;
  }

  if (IS_LEAF(n)) {
   ret = check_leaf(t, (struct leaf *)n, key, flp, res);
   if (ret > 0)
    goto backtrace;
   goto found;
  }

  cn = (struct tnode *)n;
  if (current_prefix_length < pos+bits) {
   if (tkey_extract_bits(cn->key, current_prefix_length,
      cn->pos - current_prefix_length)
       || !(cn->child[0]))
    goto backtrace;
  }
  node_prefix = mask_pfx(cn->key, cn->pos);
  key_prefix = mask_pfx(key, cn->pos);
  pref_mismatch = key_prefix^node_prefix;
  mp = 0;






  if (pref_mismatch) {
   while (!(pref_mismatch & (1<<(KEYLENGTH-1)))) {
    mp++;
    pref_mismatch = pref_mismatch << 1;
   }
   key_prefix = tkey_extract_bits(cn->key, mp, cn->pos-mp);

   if (key_prefix != 0)
    goto backtrace;

   if (current_prefix_length >= cn->pos)
    current_prefix_length = mp;
  }

  pn = (struct tnode *)n;
  chopped_off = 0;
  continue;

backtrace:
  chopped_off++;


  while ((chopped_off <= pn->bits)
         && !(cindex & (1<<(chopped_off-1))))
   chopped_off++;


  if (current_prefix_length > pn->pos + pn->bits - chopped_off)
   current_prefix_length = pn->pos + pn->bits
    - chopped_off;






  if (chopped_off <= pn->bits) {
   cindex &= ~(1 << (chopped_off-1));
  } else {
   struct tnode *parent = node_parent_rcu((struct node *) pn);
   if (!parent)
    goto failed;


   cindex = tkey_extract_bits(pn->key, parent->pos, parent->bits);
   pn = parent;
   chopped_off = 0;




   goto backtrace;
  }
 }
failed:
 ret = 1;
found:
 rcu_read_unlock();
 return ret;
}
