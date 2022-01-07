; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xfs_log_commit_cil.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log_cil.c_xfs_log_commit_cil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { %struct.log* }
%struct.log = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.xfs_trans = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.xfs_log_vec = type { i32 }

@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_LOG_REL_PERM_RESERV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_log_commit_cil(%struct.xfs_mount* %0, %struct.xfs_trans* %1, %struct.xfs_log_vec* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_log_vec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.log*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %6, align 8
  store %struct.xfs_trans* %1, %struct.xfs_trans** %7, align 8
  store %struct.xfs_log_vec* %2, %struct.xfs_log_vec** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = load %struct.log*, %struct.log** %15, align 8
  store %struct.log* %16, %struct.log** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @XFS_LOG_REL_PERM_RESERV, align 4
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %21, %5
  %24 = load %struct.log*, %struct.log** %11, align 8
  %25 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %8, align 8
  %26 = call i32 @xlog_cil_format_items(%struct.log* %24, %struct.xfs_log_vec* %25)
  %27 = load %struct.log*, %struct.log** %11, align 8
  %28 = getelementptr inbounds %struct.log, %struct.log* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = call i32 @down_read(i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.log*, %struct.log** %11, align 8
  %36 = getelementptr inbounds %struct.log, %struct.log* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %34, %23
  %44 = load %struct.log*, %struct.log** %11, align 8
  %45 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %8, align 8
  %46 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = call i32 @xlog_cil_insert_items(%struct.log* %44, %struct.xfs_log_vec* %45, %struct.TYPE_8__* %48)
  %50 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %51 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %43
  %57 = load %struct.log*, %struct.log** %11, align 8
  %58 = getelementptr inbounds %struct.log, %struct.log* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %61 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = call i32 @xlog_print_tic_res(i32 %59, %struct.TYPE_8__* %62)
  br label %64

64:                                               ; preds = %56, %43
  %65 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %66 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %65, i32 0, i32 2
  %67 = call i32 @list_empty(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %64
  %70 = load %struct.log*, %struct.log** %11, align 8
  %71 = getelementptr inbounds %struct.log, %struct.log* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %76 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %75, i32 0, i32 2
  %77 = load %struct.log*, %struct.log** %11, align 8
  %78 = getelementptr inbounds %struct.log, %struct.log* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = call i32 @list_splice_init(i32* %76, i32* %82)
  %84 = load %struct.log*, %struct.log** %11, align 8
  %85 = getelementptr inbounds %struct.log, %struct.log* %84, i32 0, i32 0
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock(i32* %87)
  br label %89

89:                                               ; preds = %69, %64
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %93 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %95 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %96 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @xfs_log_done(%struct.xfs_mount* %94, %struct.TYPE_8__* %97, i32* null, i32 %98)
  %100 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %101 = call i32 @xfs_trans_unreserve_and_mod_sb(%struct.xfs_trans* %100)
  %102 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @xfs_trans_free_items(%struct.xfs_trans* %102, i32 %104, i32 0)
  %106 = load %struct.log*, %struct.log** %11, align 8
  %107 = getelementptr inbounds %struct.log, %struct.log* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.log*, %struct.log** %11, align 8
  %114 = call i64 @XLOG_CIL_SPACE_LIMIT(%struct.log* %113)
  %115 = icmp sgt i64 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %89
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %116, %89
  %118 = load %struct.log*, %struct.log** %11, align 8
  %119 = getelementptr inbounds %struct.log, %struct.log* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = call i32 @up_read(i32* %121)
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load %struct.log*, %struct.log** %11, align 8
  %127 = call i32 @xlog_cil_push(%struct.log* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %117
  ret void
}

declare dso_local i32 @xlog_cil_format_items(%struct.log*, %struct.xfs_log_vec*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @xlog_cil_insert_items(%struct.log*, %struct.xfs_log_vec*, %struct.TYPE_8__*) #1

declare dso_local i32 @xlog_print_tic_res(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_log_done(%struct.xfs_mount*, %struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @xfs_trans_unreserve_and_mod_sb(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_free_items(%struct.xfs_trans*, i32, i32) #1

declare dso_local i64 @XLOG_CIL_SPACE_LIMIT(%struct.log*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @xlog_cil_push(%struct.log*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
