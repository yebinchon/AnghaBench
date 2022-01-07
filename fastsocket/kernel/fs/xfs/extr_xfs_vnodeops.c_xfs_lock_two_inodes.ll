; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_lock_two_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_lock_two_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_LI_IN_AIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_lock_two_inodes(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %12 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %19 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %4, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  br label %46

46:                                               ; preds = %42, %25
  br label %47

47:                                               ; preds = %81, %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @xfs_lock_inumorder(i32 %49, i32 0)
  %51 = call i32 @xfs_ilock(%struct.TYPE_9__* %48, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @XFS_LI_IN_AIL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @xfs_lock_inumorder(i32 %67, i32 1)
  %69 = call i32 @xfs_ilock_nowait(%struct.TYPE_9__* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @xfs_iunlock(%struct.TYPE_9__* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  %77 = srem i32 %76, 5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 @delay(i32 1)
  br label %81

81:                                               ; preds = %79, %71
  br label %47

82:                                               ; preds = %65
  br label %88

83:                                               ; preds = %58, %47
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @xfs_lock_inumorder(i32 %85, i32 1)
  %87 = call i32 @xfs_ilock(%struct.TYPE_9__* %84, i32 %86)
  br label %88

88:                                               ; preds = %83, %82
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xfs_lock_inumorder(i32, i32) #1

declare dso_local i32 @xfs_ilock_nowait(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
