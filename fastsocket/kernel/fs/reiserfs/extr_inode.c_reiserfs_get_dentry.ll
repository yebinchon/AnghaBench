; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_get_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_get_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.cpu_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.inode = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i64, i64, i64)* @reiserfs_get_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @reiserfs_get_dentry(%struct.super_block* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cpu_key, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %9, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.cpu_key, %struct.cpu_key* %9, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call i32 @reiserfs_write_lock(%struct.super_block* %17)
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call %struct.inode* @reiserfs_iget(%struct.super_block* %19, %struct.cpu_key* %9)
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = call i32 @IS_ERR(%struct.inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %10, align 8
  %38 = call i32 @iput(%struct.inode* %37)
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %39

39:                                               ; preds = %36, %30, %27, %23, %4
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call i32 @reiserfs_write_unlock(%struct.super_block* %40)
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call %struct.dentry* @d_obtain_alias(%struct.inode* %42)
  ret %struct.dentry* %43
}

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local %struct.inode* @reiserfs_iget(%struct.super_block*, %struct.cpu_key*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
