
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_sb {int alt_port; } ;
typedef enum als4k_gcr_t { ____Placeholder_als4k_gcr_t } als4k_gcr_t ;


 int snd_als4k_gcr_read_addr (int ,int) ;

__attribute__((used)) static inline u32 snd_als4k_gcr_read(struct snd_sb *sb, enum als4k_gcr_t reg)
{
 return snd_als4k_gcr_read_addr(sb->alt_port, reg);
}
