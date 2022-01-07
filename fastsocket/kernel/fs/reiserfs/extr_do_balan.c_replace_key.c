
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ B_IS_ITEMS_LEVEL (struct buffer_head*) ;
 int B_IS_KEYS_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int B_N_PDELIM_KEY (struct buffer_head*,int) ;
 int B_N_PITEM_HEAD (struct buffer_head*,int) ;
 int KEY_SIZE ;
 int RFALSE (int,char*,int,...) ;
 int do_balance_mark_internal_dirty (struct tree_balance*,struct buffer_head*,int ) ;
 int memcpy (int ,int ,int ) ;

void replace_key(struct tree_balance *tb, struct buffer_head *dest, int n_dest,
   struct buffer_head *src, int n_src)
{

 RFALSE(dest == ((void*)0) || src == ((void*)0),
        "vs-12305: source or destination buffer is 0 (src=%p, dest=%p)",
        src, dest);
 RFALSE(!B_IS_KEYS_LEVEL(dest),
        "vs-12310: invalid level (%z) for destination buffer. dest must be leaf",
        dest);
 RFALSE(n_dest < 0 || n_src < 0,
        "vs-12315: src(%d) or dest(%d) key number < 0", n_src, n_dest);
 RFALSE(n_dest >= B_NR_ITEMS(dest) || n_src >= B_NR_ITEMS(src),
        "vs-12320: src(%d(%d)) or dest(%d(%d)) key number is too big",
        n_src, B_NR_ITEMS(src), n_dest, B_NR_ITEMS(dest));

 if (B_IS_ITEMS_LEVEL(src))

  memcpy(B_N_PDELIM_KEY(dest, n_dest), B_N_PITEM_HEAD(src, n_src),
         KEY_SIZE);
 else
  memcpy(B_N_PDELIM_KEY(dest, n_dest), B_N_PDELIM_KEY(src, n_src),
         KEY_SIZE);

 do_balance_mark_internal_dirty(tb, dest, 0);
}
