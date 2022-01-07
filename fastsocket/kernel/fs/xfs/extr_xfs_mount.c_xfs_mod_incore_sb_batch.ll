; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mod_incore_sb_batch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mod_incore_sb_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@XFS_SBS_ICOUNT = common dso_local global i64 0, align 8
@XFS_SBS_FDBLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_mod_incore_sb_batch(%struct.xfs_mount* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  br label %16

16:                                               ; preds = %52, %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = icmp ult %struct.TYPE_3__* %17, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XFS_SBS_ICOUNT, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XFS_SBS_FDBLOCKS, align 8
  %34 = icmp sgt i64 %32, %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ true, %23 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @xfs_mod_incore_sb_unlocked(%struct.xfs_mount* %39, i64 %42, i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  br label %59

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 1
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %10, align 8
  br label %16

55:                                               ; preds = %16
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  store i32 0, i32* %5, align 4
  br label %85

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %65, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 -1
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %10, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = icmp uge %struct.TYPE_3__* %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 0, %72
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @xfs_mod_incore_sb_unlocked(%struct.xfs_mount* %66, i64 %69, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  br label %60

80:                                               ; preds = %60
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %82 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %80, %55
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_mod_incore_sb_unlocked(%struct.xfs_mount*, i64, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
