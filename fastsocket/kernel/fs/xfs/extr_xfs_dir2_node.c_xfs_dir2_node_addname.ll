; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_node.c_xfs_dir2_node_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i32, i64, %struct.TYPE_18__*, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__* }

@ENOENT = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8
@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_addname(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = call i32 @trace_xfs_dir2_node_addname(%struct.TYPE_21__* %7)
  %9 = call %struct.TYPE_19__* (...) @xfs_da_state_alloc()
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %12, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 3
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %19, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = call i32 @xfs_da_node_lookup_int(%struct.TYPE_19__* %34, i32* %5)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %1
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ENOENT, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %118

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  br label %55

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32* [ %53, %51 ], [ null, %54 ]
  %57 = call i32 @xfs_dir2_node_addname_int(%struct.TYPE_21__* %46, i32* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %118

61:                                               ; preds = %55
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i64 %71
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %3, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xfs_dir2_leafn_add(i32 %82, %struct.TYPE_21__* %83, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %61
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = call i32 @xfs_da_fixhashpath(%struct.TYPE_19__* %98, %struct.TYPE_16__* %100)
  br label %102

102:                                              ; preds = %97, %90
  br label %117

103:                                              ; preds = %61
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @ENOSPC, align 4
  %111 = icmp eq i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  br label %118

114:                                              ; preds = %103
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = call i32 @xfs_da_split(%struct.TYPE_19__* %115)
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %114, %102
  br label %118

118:                                              ; preds = %117, %108, %60, %44
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = call i32 @xfs_da_state_free(%struct.TYPE_19__* %119)
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @trace_xfs_dir2_node_addname(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da_node_lookup_int(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @xfs_dir2_node_addname_int(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_leafn_add(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @xfs_da_fixhashpath(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @xfs_da_split(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
