; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_sb.h_xfs_sb_version_toold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_sb.h_xfs_sb_version_toold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFS_SB_VERSION_QUOTABIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_ALIGNBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_NLINKBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_3 = common dso_local global i32 0, align 4
@XFS_SB_VERSION_ATTRBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION_2 = common dso_local global i32 0, align 4
@XFS_SB_VERSION_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xfs_sb_version_toold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_sb_version_toold(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @XFS_SB_VERSION_QUOTABIT, align 4
  %6 = load i32, i32* @XFS_SB_VERSION_ALIGNBIT, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %4, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @XFS_SB_VERSION_NLINKBIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @XFS_SB_VERSION_3, align 4
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @XFS_SB_VERSION_ATTRBIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @XFS_SB_VERSION_2, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @XFS_SB_VERSION_1, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %16, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
