
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int s64 ;
struct TYPE_7__ {int data_size; } ;
struct TYPE_6__ {int value_length; } ;
struct TYPE_8__ {TYPE_2__ non_resident; TYPE_1__ resident; } ;
struct TYPE_9__ {TYPE_3__ data; int non_resident; } ;
typedef TYPE_4__ ATTR_RECORD ;


 int le32_to_cpu (int ) ;
 int sle64_to_cpu (int ) ;

__attribute__((used)) static inline s64 ntfs_attr_size(const ATTR_RECORD *a)
{
 if (!a->non_resident)
  return (s64)le32_to_cpu(a->data.resident.value_length);
 return sle64_to_cpu(a->data.non_resident.data_size);
}
