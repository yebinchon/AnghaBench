; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_free_eofblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_free_eofblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XFS_TRANS_INACTIVE = common dso_local global i32 0, align 4
@XFS_FREE_EOF_TRYLOCK = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XFS_ITRUNC_DEFINITE = common dso_local global i32 0, align 4
@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_ITRUNCATE_LOG_COUNT = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_TRANS_RELEASE_LOG_RES = common dso_local global i32 0, align 4
@XFS_TRANS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_free_eofblocks(i32* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = call i64 @XFS_ISIZE(%struct.TYPE_15__* %16)
  %18 = trunc i64 %17 to i32
  %19 = call i64 @XFS_B_TO_FSB(i32* %15, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @XFS_MAXIOFFSET(i32* %21)
  %23 = trunc i64 %22 to i32
  %24 = call i64 @XFS_B_TO_FSB(i32* %20, i32 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub nsw i64 %30, %31
  store i64 %32, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %35 = call i32 @xfs_ilock(%struct.TYPE_15__* %33, i32 %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @xfs_bmapi(i32* null, %struct.TYPE_15__* %36, i64 %37, i64 %38, i32 0, i32* null, i32 0, %struct.TYPE_16__* %14, i32* %13, i32* null)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %42 = call i32 @xfs_iunlock(%struct.TYPE_15__* %40, i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %157, label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %157

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HOLESTARTBLOCK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %157

58:                                               ; preds = %53, %48
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = call i32 @xfs_qm_dqattach(%struct.TYPE_15__* %59, i32 0)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %159

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @XFS_TRANS_INACTIVE, align 4
  %68 = call i32* @xfs_trans_alloc(i32* %66, i32 %67)
  store i32* %68, i32** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @XFS_FREE_EOF_TRYLOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %76 = call i32 @xfs_ilock_nowait(%struct.TYPE_15__* %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @xfs_trans_cancel(i32* %79, i32 0)
  %81 = load i32, i32* @EAGAIN, align 4
  store i32 %81, i32* %4, align 4
  br label %159

82:                                               ; preds = %73
  br label %87

83:                                               ; preds = %65
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %86 = call i32 @xfs_ilock(%struct.TYPE_15__* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %82
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = load i32, i32* @XFS_ITRUNC_DEFINITE, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = call i64 @XFS_ISIZE(%struct.TYPE_15__* %90)
  %92 = call i32 @xfs_itruncate_start(%struct.TYPE_15__* %88, i32 %89, i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @xfs_trans_cancel(i32* %96, i32 0)
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %100 = call i32 @xfs_iunlock(%struct.TYPE_15__* %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %159

102:                                              ; preds = %87
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @XFS_ITRUNCATE_LOG_RES(i32* %104)
  %106 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %107 = load i32, i32* @XFS_ITRUNCATE_LOG_COUNT, align 4
  %108 = call i32 @xfs_trans_reserve(i32* %103, i32 0, i32 %105, i32 0, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @XFS_FORCED_SHUTDOWN(i32* %112)
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = call i32 @xfs_trans_cancel(i32* %115, i32 0)
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %119 = call i32 @xfs_iunlock(%struct.TYPE_15__* %117, i32 %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %4, align 4
  br label %159

121:                                              ; preds = %102
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %124 = call i32 @xfs_ilock(%struct.TYPE_15__* %122, i32 %123)
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = call i32 @xfs_trans_ijoin(i32* %125, %struct.TYPE_15__* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = call i64 @XFS_ISIZE(%struct.TYPE_15__* %129)
  %131 = load i32, i32* @XFS_DATA_FORK, align 4
  %132 = call i32 @xfs_itruncate_finish(i32** %8, %struct.TYPE_15__* %128, i64 %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %121
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %138 = load i32, i32* @XFS_TRANS_ABORT, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @xfs_trans_cancel(i32* %136, i32 %139)
  br label %151

141:                                              ; preds = %121
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* @XFS_TRANS_RELEASE_LOG_RES, align 4
  %144 = call i32 @xfs_trans_commit(i32* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %141
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = call i32 @xfs_inode_clear_eofblocks_tag(%struct.TYPE_15__* %148)
  br label %150

150:                                              ; preds = %147, %141
  br label %151

151:                                              ; preds = %150, %135
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %153 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %154 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @xfs_iunlock(%struct.TYPE_15__* %152, i32 %155)
  br label %157

157:                                              ; preds = %151, %53, %45, %29
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %111, %95, %78, %63, %28
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @XFS_B_TO_FSB(i32*, i32) #1

declare dso_local i64 @XFS_ISIZE(%struct.TYPE_15__*) #1

declare dso_local i64 @XFS_MAXIOFFSET(i32*) #1

declare dso_local i32 @xfs_ilock(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @xfs_bmapi(i32*, %struct.TYPE_15__*, i64, i64, i32, i32*, i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @xfs_iunlock(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @xfs_qm_dqattach(%struct.TYPE_15__*, i32) #1

declare dso_local i32* @xfs_trans_alloc(i32*, i32) #1

declare dso_local i32 @xfs_ilock_nowait(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @xfs_trans_cancel(i32*, i32) #1

declare dso_local i32 @xfs_itruncate_start(%struct.TYPE_15__*, i32, i64) #1

declare dso_local i32 @xfs_trans_reserve(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XFS_ITRUNCATE_LOG_RES(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32*) #1

declare dso_local i32 @xfs_trans_ijoin(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @xfs_itruncate_finish(i32**, %struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @xfs_trans_commit(i32*, i32) #1

declare dso_local i32 @xfs_inode_clear_eofblocks_tag(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
