; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_inode_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_dir.c_nilfs_inode_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nilfs_dir_entry = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_inode_by_name(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode* %8, %struct.dentry* %9, %struct.page** %7)
  store %struct.nilfs_dir_entry* %10, %struct.nilfs_dir_entry** %6, align 8
  %11 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %12 = icmp ne %struct.nilfs_dir_entry* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.nilfs_dir_entry*, %struct.nilfs_dir_entry** %6, align 8
  %15 = getelementptr inbounds %struct.nilfs_dir_entry, %struct.nilfs_dir_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le64_to_cpu(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = call i32 @kunmap(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = call i32 @page_cache_release(%struct.page* %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local %struct.nilfs_dir_entry* @nilfs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
