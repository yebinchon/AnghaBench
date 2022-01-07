
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int n_functions; struct gcov_ctr_info* counts; int functions; int filename; int ctr_mask; int stamp; int version; } ;
struct gcov_ctr_info {int num; int values; int merge; } ;
typedef int gcov_type ;


 int GFP_KERNEL ;
 int gcov_info_free (struct gcov_info*) ;
 int get_fn_size (struct gcov_info*) ;
 int kmemdup (int ,int,int ) ;
 int kstrdup (int ,int ) ;
 struct gcov_info* kzalloc (int,int ) ;
 int memcpy (int ,int ,size_t) ;
 unsigned int num_counter_active (struct gcov_info*) ;
 int vmalloc (size_t) ;

struct gcov_info *gcov_info_dup(struct gcov_info *info)
{
 struct gcov_info *dup;
 unsigned int i;
 unsigned int active;


 active = num_counter_active(info);
 dup = kzalloc(sizeof(struct gcov_info) +
        sizeof(struct gcov_ctr_info) * active, GFP_KERNEL);
 if (!dup)
  return ((void*)0);
 dup->version = info->version;
 dup->stamp = info->stamp;
 dup->n_functions = info->n_functions;
 dup->ctr_mask = info->ctr_mask;

 dup->filename = kstrdup(info->filename, GFP_KERNEL);
 if (!dup->filename)
  goto err_free;

 dup->functions = kmemdup(info->functions, info->n_functions *
     get_fn_size(info), GFP_KERNEL);
 if (!dup->functions)
  goto err_free;

 for (i = 0; i < active ; i++) {
  struct gcov_ctr_info *ctr = &info->counts[i];
  size_t size = ctr->num * sizeof(gcov_type);

  dup->counts[i].num = ctr->num;
  dup->counts[i].merge = ctr->merge;
  dup->counts[i].values = vmalloc(size);
  if (!dup->counts[i].values)
   goto err_free;
  memcpy(dup->counts[i].values, ctr->values, size);
 }
 return dup;

err_free:
 gcov_info_free(dup);
 return ((void*)0);
}
