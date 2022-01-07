
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_volume_status {void* part_max_blocks; void* part_blocks_avail; void* blocks_in_use; void* max_quota; void* min_quota; void* type; void* needs_salvage; void* blessed; void* in_service; void* online; void* parent_id; void* vid; } ;
typedef int __be32 ;


 void* ntohl (int ) ;

__attribute__((used)) static void xdr_decode_AFSFetchVolumeStatus(const __be32 **_bp,
         struct afs_volume_status *vs)
{
 const __be32 *bp = *_bp;

 vs->vid = ntohl(*bp++);
 vs->parent_id = ntohl(*bp++);
 vs->online = ntohl(*bp++);
 vs->in_service = ntohl(*bp++);
 vs->blessed = ntohl(*bp++);
 vs->needs_salvage = ntohl(*bp++);
 vs->type = ntohl(*bp++);
 vs->min_quota = ntohl(*bp++);
 vs->max_quota = ntohl(*bp++);
 vs->blocks_in_use = ntohl(*bp++);
 vs->part_blocks_avail = ntohl(*bp++);
 vs->part_max_blocks = ntohl(*bp++);
 *_bp = bp;
}
