
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_crypt_stat {int num_header_bytes_at_front; } ;


 int ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE ;

__attribute__((used)) static void set_default_header_data(struct ecryptfs_crypt_stat *crypt_stat)
{
 crypt_stat->num_header_bytes_at_front =
  ECRYPTFS_MINIMUM_HEADER_EXTENT_SIZE;
}
