; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtpick_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtpick_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DIFLAG_NEWRTBM = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtpick_extent(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %18 = call i32 @xfs_isilocked(%struct.TYPE_10__* %16, i32 %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  store i32* %24, i32** %13, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XFS_DIFLAG_NEWRTBM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* @XFS_DIFLAG_NEWRTBM, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %35
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %34, %4
  %45 = load i32*, i32** %13, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @xfs_highbit64(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %9, align 4
  br label %104

51:                                               ; preds = %44
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = shl i64 1, %55
  %57 = sub i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 1
  %68 = mul i64 %63, %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = lshr i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sge i32 %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %51
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @do_mod(i32 %81, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %80, %51
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %90, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %100, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %96, %87
  br label %104

104:                                              ; preds = %103, %50
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32*, i32** %13, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* @XFS_ILOG_CORE, align 4
  %113 = call i32 @xfs_trans_log_inode(i32* %108, %struct.TYPE_10__* %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xfs_highbit64(i32) #1

declare dso_local i32 @do_mod(i32, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
