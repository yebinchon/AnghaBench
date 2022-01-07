
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_map_token {int dummy; } ;


 int memset (struct btrfs_map_token*,int ,int) ;

__attribute__((used)) static inline void btrfs_init_map_token (struct btrfs_map_token *token)
{
 memset(token, 0, sizeof(*token));
}
