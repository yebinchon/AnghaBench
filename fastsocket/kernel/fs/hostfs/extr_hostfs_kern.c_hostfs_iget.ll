; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@ENOMEM = common dso_local global i64 0, align 8
@I_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @hostfs_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @hostfs_iget(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.inode* @iget_locked(%struct.super_block* %6, i32 0)
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = icmp ne %struct.inode* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @ENOMEM, align 8
  %12 = sub nsw i64 0, %11
  %13 = call %struct.inode* @ERR_PTR(i64 %12)
  store %struct.inode* %13, %struct.inode** %2, align 8
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I_NEW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call i64 @hostfs_read_inode(%struct.inode* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @iget_failed(%struct.inode* %27)
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.inode* @ERR_PTR(i64 %29)
  store %struct.inode* %30, %struct.inode** %2, align 8
  br label %36

31:                                               ; preds = %21
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i32 @unlock_new_inode(%struct.inode* %32)
  br label %34

34:                                               ; preds = %31, %14
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %35, %struct.inode** %2, align 8
  br label %36

36:                                               ; preds = %34, %26, %10
  %37 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %37
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i64) #1

declare dso_local i64 @hostfs_read_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
