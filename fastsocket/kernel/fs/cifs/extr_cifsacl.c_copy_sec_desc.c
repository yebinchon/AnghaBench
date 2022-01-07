
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {int dummy; } ;
struct cifs_ntsd {void* gsidoffset; void* osidoffset; scalar_t__ sacloffset; void* dacloffset; int type; int revision; } ;
typedef int __u32 ;


 int cifs_copy_sid (struct cifs_sid*,struct cifs_sid*) ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (void*) ;

__attribute__((used)) static void copy_sec_desc(const struct cifs_ntsd *pntsd,
    struct cifs_ntsd *pnntsd, __u32 sidsoffset)
{
 struct cifs_sid *owner_sid_ptr, *group_sid_ptr;
 struct cifs_sid *nowner_sid_ptr, *ngroup_sid_ptr;


 pnntsd->revision = pntsd->revision;
 pnntsd->type = pntsd->type;
 pnntsd->dacloffset = cpu_to_le32(sizeof(struct cifs_ntsd));
 pnntsd->sacloffset = 0;
 pnntsd->osidoffset = cpu_to_le32(sidsoffset);
 pnntsd->gsidoffset = cpu_to_le32(sidsoffset + sizeof(struct cifs_sid));


 owner_sid_ptr = (struct cifs_sid *)((char *)pntsd +
    le32_to_cpu(pntsd->osidoffset));
 nowner_sid_ptr = (struct cifs_sid *)((char *)pnntsd + sidsoffset);
 cifs_copy_sid(nowner_sid_ptr, owner_sid_ptr);


 group_sid_ptr = (struct cifs_sid *)((char *)pntsd +
    le32_to_cpu(pntsd->gsidoffset));
 ngroup_sid_ptr = (struct cifs_sid *)((char *)pnntsd + sidsoffset +
     sizeof(struct cifs_sid));
 cifs_copy_sid(ngroup_sid_ptr, group_sid_ptr);

 return;
}
