; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_freeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_super.c_jfs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_sb_info = type { %struct.jfs_log* }
%struct.jfs_log = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@FM_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @jfs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_freeze(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.jfs_sb_info*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %5)
  store %struct.jfs_sb_info* %6, %struct.jfs_sb_info** %3, align 8
  %7 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %7, i32 0, i32 0
  %9 = load %struct.jfs_log*, %struct.jfs_log** %8, align 8
  store %struct.jfs_log* %9, %struct.jfs_log** %4, align 8
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MS_RDONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call i32 @txQuiesce(%struct.super_block* %17)
  %19 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %20 = call i32 @lmLogShutdown(%struct.jfs_log* %19)
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = load i32, i32* @FM_CLEAN, align 4
  %23 = call i32 @updateSuper(%struct.super_block* %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  ret i32 0
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @txQuiesce(%struct.super_block*) #1

declare dso_local i32 @lmLogShutdown(%struct.jfs_log*) #1

declare dso_local i32 @updateSuper(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
