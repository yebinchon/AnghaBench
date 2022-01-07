; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_inode_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_dir.c_minix_inode_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.minix_dir_entry = type { i32 }
%struct.minix_sb_info = type { i64 }
%struct.TYPE_2__ = type { i32 }

@MINIX_V3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @minix_inode_by_name(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.minix_dir_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.minix_sb_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = call %struct.minix_dir_entry* @minix_find_entry(%struct.dentry* %9, %struct.page** %3)
  store %struct.minix_dir_entry* %10, %struct.minix_dir_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %12 = icmp ne %struct.minix_dir_entry* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %6, align 8
  %17 = load %struct.address_space*, %struct.address_space** %6, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.minix_sb_info* @minix_sb(i32 %22)
  store %struct.minix_sb_info* %23, %struct.minix_sb_info** %8, align 8
  %24 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MINIX_V3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %31 = bitcast %struct.minix_dir_entry* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %38

34:                                               ; preds = %13
  %35 = load %struct.minix_dir_entry*, %struct.minix_dir_entry** %4, align 8
  %36 = getelementptr inbounds %struct.minix_dir_entry, %struct.minix_dir_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.page*, %struct.page** %3, align 8
  %40 = call i32 @dir_put_page(%struct.page* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.minix_dir_entry* @minix_find_entry(%struct.dentry*, %struct.page**) #1

declare dso_local %struct.minix_sb_info* @minix_sb(i32) #1

declare dso_local i32 @dir_put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
