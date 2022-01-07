
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treepath {scalar_t__ path_length; } ;
struct super_block {int dummy; } ;
struct cpu_key {int dummy; } ;
struct TYPE_2__ {int b_bdev; } ;


 scalar_t__ FIRST_PATH_ELEMENT_OFFSET ;
 scalar_t__ MAX_HEIGHT ;
 TYPE_1__* PATH_PLAST_BUFFER (struct treepath*) ;
 int RFALSE (int,char*,...) ;
 int comp_keys (int ,struct cpu_key const*) ;
 int get_lkey (struct treepath*,struct super_block*) ;
 int get_rkey (struct treepath*,struct super_block*) ;

__attribute__((used)) static inline int key_in_buffer(struct treepath *chk_path,
    const struct cpu_key *key,
    struct super_block *sb
    )
{

 RFALSE(!key || chk_path->path_length < FIRST_PATH_ELEMENT_OFFSET
        || chk_path->path_length > MAX_HEIGHT,
        "PAP-5050: pointer to the key(%p) is NULL or invalid path length(%d)",
        key, chk_path->path_length);
 RFALSE(!PATH_PLAST_BUFFER(chk_path)->b_bdev,
        "PAP-5060: device must not be NODEV");

 if (comp_keys(get_lkey(chk_path, sb), key) == 1)

  return 0;

 if (comp_keys(get_rkey(chk_path, sb), key) != 1)

  return 0;
 return 1;
}
