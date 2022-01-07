
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sb {int alt_port; } ;
typedef enum als4k_gcr_t { ____Placeholder_als4k_gcr_t } als4k_gcr_t ;


 int snd_als4k_gcr_write_addr (int ,int,int ) ;

__attribute__((used)) static inline void snd_als4k_gcr_write(struct snd_sb *sb,
      enum als4k_gcr_t reg,
      u32 val)
{
 snd_als4k_gcr_write_addr(sb->alt_port, reg, val);
}
