; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_namei.c_ufs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.dentry = type { %struct.inode* }

@UFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ufs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = call i32 (...) @lock_kernel()
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UFS_LINK_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = call i32 (...) @unlock_kernel()
  %21 = load i32, i32* @EMLINK, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i32 @inode_inc_link_count(%struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call i32 @ufs_add_nondir(%struct.dentry* %32, %struct.inode* %33)
  store i32 %34, i32* %9, align 4
  %35 = call i32 (...) @unlock_kernel()
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %23, %19
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ufs_add_nondir(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
