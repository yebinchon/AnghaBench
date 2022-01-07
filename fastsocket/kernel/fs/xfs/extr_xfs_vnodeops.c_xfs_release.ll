; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_vnodeops.c_xfs_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }

@XFS_MOUNT_RDONLY = common dso_local global i32 0, align 4
@XFS_ITRUNCATED = common dso_local global i32 0, align 4
@XFS_IDIRTY_RELEASE = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@FI_NONE = common dso_local global i32 0, align 4
@XFS_FREE_EOF_TRYLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_release(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @S_ISREG(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %115

23:                                               ; preds = %16
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_MOUNT_RDONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %115

31:                                               ; preds = %23
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = call i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_18__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %31
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i64 @xfs_inode_is_filestream(%struct.TYPE_19__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = call i32 @xfs_filestream_deassociate(%struct.TYPE_19__* %46)
  br label %48

48:                                               ; preds = %45, %41, %35
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = load i32, i32* @XFS_ITRUNCATED, align 4
  %51 = call i32 @xfs_iflags_test_and_clear(%struct.TYPE_19__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %48
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = load i32, i32* @XFS_IDIRTY_RELEASE, align 4
  %57 = call i32 @xfs_iflags_clear(%struct.TYPE_19__* %55, i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = call i32 @VFS_I(%struct.TYPE_19__* %58)
  %60 = call i64 @VN_DIRTY(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = load i32, i32* @XBF_ASYNC, align 4
  %70 = load i32, i32* @FI_NONE, align 4
  %71 = call i32 @xfs_flush_pages(%struct.TYPE_19__* %68, i32 0, i32 -1, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62, %54
  br label %73

73:                                               ; preds = %72, %48
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %115

81:                                               ; preds = %74
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = call i64 @xfs_can_free_eofblocks(%struct.TYPE_19__* %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %81
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %87 = load i32, i32* @XFS_IDIRTY_RELEASE, align 4
  %88 = call i64 @xfs_iflags_test(%struct.TYPE_19__* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %115

91:                                               ; preds = %85
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %94 = load i32, i32* @XFS_FREE_EOF_TRYLOCK, align 4
  %95 = call i32 @xfs_free_eofblocks(%struct.TYPE_18__* %92, %struct.TYPE_19__* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %115

104:                                              ; preds = %98, %91
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = load i32, i32* @XFS_IDIRTY_RELEASE, align 4
  %112 = call i32 @xfs_iflags_set(%struct.TYPE_19__* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %104
  br label %114

114:                                              ; preds = %113, %81
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %102, %90, %80, %30, %22
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @S_ISREG(i64) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(%struct.TYPE_18__*) #1

declare dso_local i64 @xfs_inode_is_filestream(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_filestream_deassociate(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_iflags_test_and_clear(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xfs_iflags_clear(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @VN_DIRTY(i32) #1

declare dso_local i32 @VFS_I(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_flush_pages(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i64 @xfs_can_free_eofblocks(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @xfs_iflags_test(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @xfs_free_eofblocks(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @xfs_iflags_set(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
