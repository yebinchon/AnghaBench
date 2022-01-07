
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SEL_CLASS_INO_OFFSET ;
 int SEL_VEC_MAX ;

__attribute__((used)) static inline unsigned long sel_class_to_ino(u16 class)
{
 return (class * (SEL_VEC_MAX + 1)) | SEL_CLASS_INO_OFFSET;
}
