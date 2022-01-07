; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_set_dmattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_set_dmattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_TRANS_SET_DMATTRS = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_set_dmattrs(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @capable(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EPERM, align 4
  %19 = call i32 @XFS_ERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @XFS_FORCED_SHUTDOWN(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EIO, align 4
  %26 = call i32 @XFS_ERROR(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* @XFS_TRANS_SET_DMATTRS, align 4
  %30 = call i32* @xfs_trans_alloc(i32* %28, i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @XFS_ICHANGE_LOG_RES(i32* %32)
  %34 = call i32 @xfs_trans_reserve(i32* %31, i32 0, i32 %33, i32 0, i32 0, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @xfs_trans_cancel(i32* %38, i32 0)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %44 = call i32 @xfs_ilock(%struct.TYPE_8__* %42, i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %48 = call i32 @xfs_trans_ijoin_ref(i32* %45, %struct.TYPE_8__* %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = load i32, i32* @XFS_ILOG_CORE, align 4
  %60 = call i32 @xfs_trans_log_inode(i32* %57, %struct.TYPE_8__* %58, i32 %59)
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @xfs_trans_commit(i32* %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %41, %37, %24, %17
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32*) #1

declare dso_local i32* @xfs_trans_alloc(i32*, i32) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_ICHANGE_LOG_RES(i32*) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xfs_trans_ijoin_ref(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xfs_trans_log_inode(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
