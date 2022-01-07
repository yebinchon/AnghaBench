; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_reserve_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_reserve_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_SBS_FDBLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_reserve_blocks(%struct.TYPE_10__* %0, i64* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %144

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %144

32:                                               ; preds = %3
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %141, %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @xfs_icsb_sync_counters_locked(%struct.TYPE_10__* %39, i32 0)
  store i64 0, i64* %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %35
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub nsw i64 %49, %50
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %56
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %54, %46
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %112

65:                                               ; preds = %35
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i64 @XFS_ALLOC_SET_ASIDE(%struct.TYPE_10__* %70)
  %72 = sub nsw i64 %69, %71
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %113

76:                                               ; preds = %65
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %9, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %10, align 8
  br label %111

100:                                              ; preds = %76
  %101 = load i64, i64* %9, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %100, %87
  br label %112

112:                                              ; preds = %111, %61
  br label %113

113:                                              ; preds = %112, %75
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = icmp ne %struct.TYPE_11__* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %116, %113
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load i64, i64* %10, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = load i32, i32* @XFS_SBS_FDBLOCKS, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @xfs_icsb_modify_counters(%struct.TYPE_10__* %134, i32 %135, i64 %136, i32 0)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @ENOSPC, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %35

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %127
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %21, %19
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_icsb_sync_counters_locked(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @XFS_ALLOC_SET_ASIDE(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_icsb_modify_counters(%struct.TYPE_10__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
