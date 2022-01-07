; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_inactive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr.c_xfs_attr_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i64 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_LOCAL = common dso_local global i64 0, align 8
@XFS_TRANS_ATTRINVAL = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_ATTRINVAL_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_inactive(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i32 @XFS_NOT_DQATTACHED(i32* %10, %struct.TYPE_13__* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %19 = call i32 @xfs_ilock(%struct.TYPE_13__* %17, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = call i32 @xfs_inode_hasattr(%struct.TYPE_13__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23, %1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %33 = call i32 @xfs_iunlock(%struct.TYPE_13__* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %105

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %37 = call i32 @xfs_iunlock(%struct.TYPE_13__* %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @XFS_TRANS_ATTRINVAL, align 4
  %40 = call i32* @xfs_trans_alloc(i32* %38, i32 %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @XFS_ATTRINVAL_LOG_RES(i32* %42)
  %44 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %45 = load i32, i32* @XFS_ATTRINVAL_LOG_COUNT, align 4
  %46 = call i32 @xfs_trans_reserve(i32* %41, i32 0, i32 %43, i32 0, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @xfs_trans_cancel(i32* %49, i32 0)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %105

52:                                               ; preds = %34
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %55 = call i32 @xfs_ilock(%struct.TYPE_13__* %53, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32 @xfs_trans_ijoin(i32* %56, %struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = call i32 @xfs_inode_hasattr(%struct.TYPE_13__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @XFS_DINODE_FMT_LOCAL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %52
  store i32 0, i32* %6, align 4
  br label %95

70:                                               ; preds = %62
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = call i32 @xfs_attr_root_inactive(i32** %4, %struct.TYPE_13__* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %95

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = load i32, i32* @XFS_ATTR_FORK, align 4
  %79 = call i32 @xfs_itruncate_finish(i32** %4, %struct.TYPE_13__* %77, i64 0, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %95

83:                                               ; preds = %76
  %84 = load i32*, i32** %4, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = load i32, i32* @XFS_ILOG_CORE, align 4
  %87 = call i32 @xfs_trans_log_inode(i32* %84, %struct.TYPE_13__* %85, i32 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %90 = call i32 @xfs_trans_commit(i32* %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %92 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %93 = call i32 @xfs_iunlock(%struct.TYPE_13__* %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %105

95:                                               ; preds = %82, %75, %69
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %98 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @xfs_trans_cancel(i32* %96, i32 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %103 = call i32 @xfs_iunlock(%struct.TYPE_13__* %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %95, %83, %48, %30
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_NOT_DQATTACHED(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xfs_inode_hasattr(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_13__*, i32) #1

declare dso_local i32* @xfs_trans_alloc(i32*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_ATTRINVAL_LOG_RES(i32*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @xfs_attr_root_inactive(i32**, %struct.TYPE_13__*) #1

declare dso_local i32 @xfs_itruncate_finish(i32**, %struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
