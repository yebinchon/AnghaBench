
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_meta_header {int mh_type; int mh_magic; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ GFS2_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 int gfs2_meta_check_ii (struct gfs2_sbd*,struct buffer_head*,char*,char const*,char*,unsigned int) ;
 int gfs2_metatype_check_ii (struct gfs2_sbd*,struct buffer_head*,scalar_t__,scalar_t__,char const*,char*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int gfs2_metatype_check_i(struct gfs2_sbd *sdp,
     struct buffer_head *bh,
     u16 type,
     const char *function,
     char *file, unsigned int line)
{
 struct gfs2_meta_header *mh = (struct gfs2_meta_header *)bh->b_data;
 u32 magic = be32_to_cpu(mh->mh_magic);
 u16 t = be32_to_cpu(mh->mh_type);
 if (unlikely(magic != GFS2_MAGIC))
  return gfs2_meta_check_ii(sdp, bh, "magic number", function,
       file, line);
        if (unlikely(t != type))
  return gfs2_metatype_check_ii(sdp, bh, type, t, function,
           file, line);
 return 0;
}
