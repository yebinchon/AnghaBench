
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lm_lockname {struct gfs2_sbd const* ln_type; struct gfs2_sbd const* ln_number; } ;
struct gfs2_sbd {int dummy; } ;


 unsigned int GFS2_GL_HASH_MASK ;
 unsigned int jhash (struct gfs2_sbd const**,int,unsigned int) ;

__attribute__((used)) static unsigned int gl_hash(const struct gfs2_sbd *sdp,
       const struct lm_lockname *name)
{
 unsigned int h;

 h = jhash(&name->ln_number, sizeof(u64), 0);
 h = jhash(&name->ln_type, sizeof(unsigned int), h);
 h = jhash(&sdp, sizeof(struct gfs2_sbd *), h);
 h &= GFS2_GL_HASH_MASK;

 return h;
}
