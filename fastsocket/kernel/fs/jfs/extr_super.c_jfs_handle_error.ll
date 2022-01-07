; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_handle_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.jfs_sb_info = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@FM_DIRTY = common dso_local global i32 0, align 4
@JFS_ERR_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"JFS (device %s): panic forced after error\0A\00", align 1
@JFS_ERR_REMOUNT_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ERROR: (device %s): remounting filesystem as read-only\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @jfs_handle_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jfs_handle_error(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %4)
  store %struct.jfs_sb_info* %5, %struct.jfs_sb_info** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MS_RDONLY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = load i32, i32* @FM_DIRTY, align 4
  %16 = call i32 @updateSuper(%struct.super_block* %14, i32 %15)
  %17 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %18 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @JFS_ERR_PANIC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %46

28:                                               ; preds = %13
  %29 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %30 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @JFS_ERR_REMOUNT_RO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @jfs_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @MS_RDONLY, align 4
  %41 = load %struct.super_block*, %struct.super_block** %2, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %35, %28
  br label %46

46:                                               ; preds = %12, %45, %23
  ret void
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
