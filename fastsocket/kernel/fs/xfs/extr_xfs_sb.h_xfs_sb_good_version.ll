; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_sb.h_xfs_sb_good_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_sb.h_xfs_sb_good_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@XFS_SB_VERSION_1 = common dso_local global i32 0, align 4
@XFS_SB_VERSION_3 = common dso_local global i32 0, align 4
@XFS_SB_VERSION_4 = common dso_local global i64 0, align 8
@XFS_SB_VERSION_OKREALBITS = common dso_local global i32 0, align 4
@XFS_SB_VERSION_MOREBITSBIT = common dso_local global i32 0, align 4
@XFS_SB_VERSION2_OKREALBITS = common dso_local global i32 0, align 4
@XFS_SB_VERSION_SHAREDBIT = common dso_local global i32 0, align 4
@XFS_SB_MAX_SHARED_VN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @xfs_sb_good_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_sb_good_version(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @XFS_SB_VERSION_1, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XFS_SB_VERSION_3, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %61

16:                                               ; preds = %9, %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i64 @XFS_SB_VERSION_NUM(%struct.TYPE_4__* %17)
  %19 = load i64, i64* @XFS_SB_VERSION_4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFS_SB_VERSION_OKREALBITS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XFS_SB_VERSION_MOREBITSBIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XFS_SB_VERSION2_OKREALBITS, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %21
  store i32 0, i32* %2, align 4
  br label %61

45:                                               ; preds = %36, %29
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XFS_SB_VERSION_SHAREDBIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @XFS_SB_MAX_SHARED_VN, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %61

59:                                               ; preds = %52, %45
  store i32 1, i32* %2, align 4
  br label %61

60:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %59, %58, %44, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @XFS_SB_VERSION_NUM(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
