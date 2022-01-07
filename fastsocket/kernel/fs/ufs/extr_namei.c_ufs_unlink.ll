; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.ufs_dir_entry = type { i32 }
%struct.page = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ufs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ufs_dir_entry*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %5, align 8
  %12 = load i32, i32* @ENOENT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode* %14, %struct.dentry* %15, %struct.page** %7)
  store %struct.ufs_dir_entry* %16, %struct.ufs_dir_entry** %6, align 8
  %17 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %18 = icmp ne %struct.ufs_dir_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %6, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = call i32 @ufs_delete_entry(%struct.inode* %21, %struct.ufs_dir_entry* %22, %struct.page* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %36

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @inode_dec_link_count(%struct.inode* %34)
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %28, %27, %19
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local %struct.ufs_dir_entry* @ufs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i32 @ufs_delete_entry(%struct.inode*, %struct.ufs_dir_entry*, %struct.page*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
