; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_unfreeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.jfs_log* }
%struct.jfs_log = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@FM_MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"jfs_unlock failed with return code %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @jfs_unfreeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_unfreeze(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %6)
  store %struct.jfs_sb_info* %7, %struct.jfs_sb_info** %3, align 8
  %8 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %8, i32 0, i32 0
  %10 = load %struct.jfs_log*, %struct.jfs_log** %9, align 8
  store %struct.jfs_log* %10, %struct.jfs_log** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.super_block*, %struct.super_block** %2, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MS_RDONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %1
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = load i32, i32* @FM_MOUNT, align 4
  %20 = call i32 @updateSuper(%struct.super_block* %18, i32 %19)
  %21 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %22 = call i32 @lmLogInit(%struct.jfs_log* %21)
  store i32 %22, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @jfs_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %30

27:                                               ; preds = %17
  %28 = load %struct.super_block*, %struct.super_block** %2, align 8
  %29 = call i32 @txResume(%struct.super_block* %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %1
  ret i32 0
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

declare dso_local i32 @lmLogInit(%struct.jfs_log*) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local i32 @txResume(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
