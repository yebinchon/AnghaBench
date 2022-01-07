; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_removename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, i32, %struct.TYPE_18__*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_removename(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = call i32 @trace_xfs_dir2_node_removename(%struct.TYPE_21__* %8)
  %10 = call %struct.TYPE_19__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %7, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 6
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %13, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = call i32 @xfs_da_node_lookup_int(%struct.TYPE_19__* %35, i32* %6)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @EEXIST, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = call i32 @xfs_da_state_free(%struct.TYPE_19__* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %112

49:                                               ; preds = %41
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i64 %59
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %4, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = call i32 @xfs_dir2_leafn_remove(%struct.TYPE_21__* %72, i32 %75, i32 %78, i32* %80, i32* %6)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %49
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %112

86:                                               ; preds = %49
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = call i32 @xfs_da_fixhashpath(%struct.TYPE_19__* %87, %struct.TYPE_16__* %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = call i32 @xfs_da_join(%struct.TYPE_19__* %100)
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %99, %93, %86
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %107 = call i32 @xfs_dir2_node_to_leaf(%struct.TYPE_19__* %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = call i32 @xfs_da_state_free(%struct.TYPE_19__* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %84, %45
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @trace_xfs_dir2_node_removename(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da_node_lookup_int(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_19__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_leafn_remove(%struct.TYPE_21__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_da_fixhashpath(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @xfs_da_join(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_dir2_node_to_leaf(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
