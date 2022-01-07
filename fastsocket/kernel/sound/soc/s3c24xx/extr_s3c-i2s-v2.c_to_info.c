
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct s3c_i2sv2_info* private_data; } ;
struct s3c_i2sv2_info {int dummy; } ;



__attribute__((used)) static inline struct s3c_i2sv2_info *to_info(struct snd_soc_dai *cpu_dai)
{
 return cpu_dai->private_data;
}
