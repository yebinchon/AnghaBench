; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dfrag.c_xfs_swapext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dfrag.c_xfs_swapext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.file = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_swapext(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = call %struct.file* @fget(i32 %11)
  store %struct.file* %12, %struct.file** %5, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = call i32 @XFS_ERROR(i32 %16)
  store i32 %17, i32* %7, align 4
  br label %154

18:                                               ; preds = %1
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FMODE_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %18
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FMODE_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @O_APPEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %25, %18
  %40 = load i32, i32* @EBADF, align 4
  %41 = call i32 @XFS_ERROR(i32 %40)
  store i32 %41, i32* %7, align 4
  br label %151

42:                                               ; preds = %32
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call %struct.file* @fget(i32 %46)
  store %struct.file* %47, %struct.file** %6, align 8
  %48 = load %struct.file*, %struct.file** %6, align 8
  %49 = icmp ne %struct.file* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @XFS_ERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %151

53:                                               ; preds = %42
  %54 = load %struct.file*, %struct.file** %6, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @FMODE_WRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %53
  %61 = load %struct.file*, %struct.file** %6, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @FMODE_READ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.file*, %struct.file** %6, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @O_APPEND, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67, %60, %53
  %75 = load i32, i32* @EBADF, align 4
  %76 = call i32 @XFS_ERROR(i32 %75)
  store i32 %76, i32* %7, align 4
  br label %148

77:                                               ; preds = %67
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_SWAPFILE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %77
  %87 = load %struct.file*, %struct.file** %6, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @IS_SWAPFILE(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86, %77
  %96 = load i32, i32* @EINVAL, align 4
  %97 = call i32 @XFS_ERROR(i32 %96)
  store i32 %97, i32* %7, align 4
  br label %148

98:                                               ; preds = %86
  %99 = load %struct.file*, %struct.file** %5, align 8
  %100 = getelementptr inbounds %struct.file, %struct.file* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.TYPE_13__* @XFS_I(i32 %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %3, align 8
  %106 = load %struct.file*, %struct.file** %6, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.TYPE_13__* @XFS_I(i32 %111)
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %4, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %98
  %121 = load i32, i32* @EINVAL, align 4
  %122 = call i32 @XFS_ERROR(i32 %121)
  store i32 %122, i32* %7, align 4
  br label %148

123:                                              ; preds = %98
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %123
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @XFS_ERROR(i32 %132)
  store i32 %133, i32* %7, align 4
  br label %148

134:                                              ; preds = %123
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @XFS_FORCED_SHUTDOWN(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @EIO, align 4
  %142 = call i32 @XFS_ERROR(i32 %141)
  store i32 %142, i32* %7, align 4
  br label %148

143:                                              ; preds = %134
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %147 = call i32 @xfs_swap_extents(%struct.TYPE_13__* %144, %struct.TYPE_13__* %145, %struct.TYPE_12__* %146)
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %140, %131, %120, %95, %74
  %149 = load %struct.file*, %struct.file** %6, align 8
  %150 = call i32 @fput(%struct.file* %149)
  br label %151

151:                                              ; preds = %148, %50, %39
  %152 = load %struct.file*, %struct.file** %5, align 8
  %153 = call i32 @fput(%struct.file* %152)
  br label %154

154:                                              ; preds = %151, %15
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @IS_SWAPFILE(i32) #1

declare dso_local %struct.TYPE_13__* @XFS_I(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i64) #1

declare dso_local i32 @xfs_swap_extents(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
