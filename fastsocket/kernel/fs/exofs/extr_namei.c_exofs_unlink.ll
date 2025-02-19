; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.exofs_dir_entry = type { i32 }
%struct.page = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @exofs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.exofs_dir_entry*, align 8
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
  %16 = call %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode* %14, %struct.dentry* %15, %struct.page** %7)
  store %struct.exofs_dir_entry* %16, %struct.exofs_dir_entry** %6, align 8
  %17 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %18 = icmp ne %struct.exofs_dir_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.exofs_dir_entry*, %struct.exofs_dir_entry** %6, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i32 @exofs_delete_entry(%struct.exofs_dir_entry* %21, %struct.page* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call i32 @inode_dec_link_count(%struct.inode* %33)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %27, %26, %19
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local %struct.exofs_dir_entry* @exofs_find_entry(%struct.inode*, %struct.dentry*, %struct.page**) #1

declare dso_local i32 @exofs_delete_entry(%struct.exofs_dir_entry*, %struct.page*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
