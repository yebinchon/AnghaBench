
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kimage {int type; } ;
struct kexec_segment {int dummy; } ;


 int ENOMEM ;


 int kimage_load_crash_segment (struct kimage*,struct kexec_segment*) ;
 int kimage_load_normal_segment (struct kimage*,struct kexec_segment*) ;

__attribute__((used)) static int kimage_load_segment(struct kimage *image,
    struct kexec_segment *segment)
{
 int result = -ENOMEM;

 switch (image->type) {
 case 128:
  result = kimage_load_normal_segment(image, segment);
  break;
 case 129:
  result = kimage_load_crash_segment(image, segment);
  break;
 }

 return result;
}
