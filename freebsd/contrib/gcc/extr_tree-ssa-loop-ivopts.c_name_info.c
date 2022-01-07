
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct version_info {int dummy; } ;
struct ivopts_data {int dummy; } ;


 int SSA_NAME_VERSION (int ) ;
 struct version_info* ver_info (struct ivopts_data*,int ) ;

__attribute__((used)) static inline struct version_info *
name_info (struct ivopts_data *data, tree name)
{
  return ver_info (data, SSA_NAME_VERSION (name));
}
