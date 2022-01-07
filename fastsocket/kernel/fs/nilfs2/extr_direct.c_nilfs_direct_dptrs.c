
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nilfs_direct_node {int dummy; } ;
struct TYPE_3__ {scalar_t__ u_data; } ;
struct TYPE_4__ {TYPE_1__ b_u; } ;
struct nilfs_direct {TYPE_2__ d_bmap; } ;
typedef int __le64 ;



__attribute__((used)) static inline __le64 *nilfs_direct_dptrs(const struct nilfs_direct *direct)
{
 return (__le64 *)
  ((struct nilfs_direct_node *)direct->d_bmap.b_u.u_data + 1);
}
