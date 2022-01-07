
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct super_block {int dummy; } ;
typedef int fs64 ;
typedef int befs_off_t ;
struct TYPE_6__ {int all_key_count; } ;
struct TYPE_7__ {TYPE_1__ head; } ;
typedef TYPE_2__ befs_btree_node ;


 int BEFS_BT_MATCH ;
 int BEFS_BT_NOT_FOUND ;
 int BEFS_BT_PARMATCH ;
 char* befs_bt_get_key (struct super_block*,TYPE_2__*,int,int *) ;
 int * befs_bt_valarray (TYPE_2__*) ;
 int befs_compare_strings (char*,int ,char const*,int) ;
 int befs_debug (struct super_block*,char*,...) ;
 int fs64_to_cpu (struct super_block*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
befs_find_key(struct super_block *sb, befs_btree_node * node,
       const char *findkey, befs_off_t * value)
{
 int first, last, mid;
 int eq;
 u16 keylen;
 int findkey_len;
 char *thiskey;
 fs64 *valarray;

 befs_debug(sb, "---> befs_find_key() %s", findkey);

 *value = 0;

 findkey_len = strlen(findkey);


 last = node->head.all_key_count - 1;
 thiskey = befs_bt_get_key(sb, node, last, &keylen);

 eq = befs_compare_strings(thiskey, keylen, findkey, findkey_len);
 if (eq < 0) {
  befs_debug(sb, "<--- befs_find_key() %s not found", findkey);
  return BEFS_BT_NOT_FOUND;
 }

 valarray = befs_bt_valarray(node);


 first = 0;
 mid = 0;
 while (last >= first) {
  mid = (last + first) / 2;
  befs_debug(sb, "first: %d, last: %d, mid: %d", first, last,
      mid);
  thiskey = befs_bt_get_key(sb, node, mid, &keylen);
  eq = befs_compare_strings(thiskey, keylen, findkey,
       findkey_len);

  if (eq == 0) {
   befs_debug(sb, "<--- befs_find_key() found %s at %d",
       thiskey, mid);

   *value = fs64_to_cpu(sb, valarray[mid]);
   return BEFS_BT_MATCH;
  }
  if (eq > 0)
   last = mid - 1;
  else
   first = mid + 1;
 }
 if (eq < 0)
  *value = fs64_to_cpu(sb, valarray[mid + 1]);
 else
  *value = fs64_to_cpu(sb, valarray[mid]);
 befs_debug(sb, "<--- befs_find_key() found %s at %d", thiskey, mid);
 return BEFS_BT_PARMATCH;
}
