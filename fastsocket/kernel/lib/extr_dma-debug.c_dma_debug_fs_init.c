
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOMEM ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,int *,int *) ;
 void* debugfs_create_u32 (char*,int,int ,int *) ;
 int debugfs_remove_recursive (int ) ;
 int dma_debug_dent ;
 int error_count ;
 void* error_count_dent ;
 int filter_dent ;
 int filter_fops ;
 int global_disable ;
 int global_disable_dent ;
 int min_free_entries ;
 void* min_free_entries_dent ;
 int num_free_entries ;
 void* num_free_entries_dent ;
 int pr_err (char*) ;
 int show_all_errors ;
 void* show_all_errors_dent ;
 int show_num_errors ;
 void* show_num_errors_dent ;

__attribute__((used)) static int dma_debug_fs_init(void)
{
 dma_debug_dent = debugfs_create_dir("dma-api", ((void*)0));
 if (!dma_debug_dent) {
  pr_err("DMA-API: can not create debugfs directory\n");
  return -ENOMEM;
 }

 global_disable_dent = debugfs_create_bool("disabled", 0444,
   dma_debug_dent,
   (u32 *)&global_disable);
 if (!global_disable_dent)
  goto out_err;

 error_count_dent = debugfs_create_u32("error_count", 0444,
   dma_debug_dent, &error_count);
 if (!error_count_dent)
  goto out_err;

 show_all_errors_dent = debugfs_create_u32("all_errors", 0644,
   dma_debug_dent,
   &show_all_errors);
 if (!show_all_errors_dent)
  goto out_err;

 show_num_errors_dent = debugfs_create_u32("num_errors", 0644,
   dma_debug_dent,
   &show_num_errors);
 if (!show_num_errors_dent)
  goto out_err;

 num_free_entries_dent = debugfs_create_u32("num_free_entries", 0444,
   dma_debug_dent,
   &num_free_entries);
 if (!num_free_entries_dent)
  goto out_err;

 min_free_entries_dent = debugfs_create_u32("min_free_entries", 0444,
   dma_debug_dent,
   &min_free_entries);
 if (!min_free_entries_dent)
  goto out_err;

 filter_dent = debugfs_create_file("driver_filter", 0644,
       dma_debug_dent, ((void*)0), &filter_fops);
 if (!filter_dent)
  goto out_err;

 return 0;

out_err:
 debugfs_remove_recursive(dma_debug_dent);

 return -ENOMEM;
}
