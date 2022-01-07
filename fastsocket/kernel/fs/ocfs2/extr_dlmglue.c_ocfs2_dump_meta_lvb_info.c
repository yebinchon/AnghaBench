
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_meta_lvb {int lvb_iattr; int lvb_imtime_packed; int lvb_ictime_packed; int lvb_iatime_packed; int lvb_inlink; int lvb_imode; int lvb_igid; int lvb_iuid; int lvb_isize; int lvb_igeneration; int lvb_iclusters; int lvb_version; } ;
struct ocfs2_lock_res {int l_name; int l_lksb; } ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int mlog (int ,char*,unsigned long long,...) ;
 struct ocfs2_meta_lvb* ocfs2_dlm_lvb (int *) ;

__attribute__((used)) static void ocfs2_dump_meta_lvb_info(u64 level,
         const char *function,
         unsigned int line,
         struct ocfs2_lock_res *lockres)
{
 struct ocfs2_meta_lvb *lvb = ocfs2_dlm_lvb(&lockres->l_lksb);

 mlog(level, "LVB information for %s (called from %s:%u):\n",
      lockres->l_name, function, line);
 mlog(level, "version: %u, clusters: %u, generation: 0x%x\n",
      lvb->lvb_version, be32_to_cpu(lvb->lvb_iclusters),
      be32_to_cpu(lvb->lvb_igeneration));
 mlog(level, "size: %llu, uid %u, gid %u, mode 0x%x\n",
      (unsigned long long)be64_to_cpu(lvb->lvb_isize),
      be32_to_cpu(lvb->lvb_iuid), be32_to_cpu(lvb->lvb_igid),
      be16_to_cpu(lvb->lvb_imode));
 mlog(level, "nlink %u, atime_packed 0x%llx, ctime_packed 0x%llx, "
      "mtime_packed 0x%llx iattr 0x%x\n", be16_to_cpu(lvb->lvb_inlink),
      (long long)be64_to_cpu(lvb->lvb_iatime_packed),
      (long long)be64_to_cpu(lvb->lvb_ictime_packed),
      (long long)be64_to_cpu(lvb->lvb_imtime_packed),
      be32_to_cpu(lvb->lvb_iattr));
}
