; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, i64, %struct.TYPE_20__, %struct.TYPE_18__*, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_22__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_lookup(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = call i32 @trace_xfs_dir2_node_lookup(%struct.TYPE_24__* %8)
  %10 = call %struct.TYPE_23__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %6, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 6
  store %struct.TYPE_24__* %11, %struct.TYPE_24__** %13, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %20, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = call i32 @xfs_da_node_lookup_int(%struct.TYPE_23__* %35, i32* %5)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %5, align 4
  br label %75

41:                                               ; preds = %1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ENOENT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @XFS_CMP_CASE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %58, i64 %63
  %65 = bitcast i8* %64 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %65, %struct.TYPE_22__** %7, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_24__* %66, i32 %69, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %51, %45, %41
  br label %75

75:                                               ; preds = %74, %39
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %105, %75
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %76
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = call i32 @xfs_da_brelse(i32 %86, %struct.TYPE_16__* %95)
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %104, align 8
  br label %105

105:                                              ; preds = %83
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %76

108:                                              ; preds = %76
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %108
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = icmp ne %struct.TYPE_16__* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = call i32 @xfs_da_brelse(i32 %122, %struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %130, align 8
  br label %131

131:                                              ; preds = %119, %113, %108
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %133 = call i32 @xfs_da_state_free(%struct.TYPE_23__* %132)
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @trace_xfs_dir2_node_lookup(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da_node_lookup_int(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @xfs_da_brelse(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
