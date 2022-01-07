; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_removename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_removename(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %19 = call i32 @trace_xfs_dir2_block_removename(%struct.TYPE_30__* %18)
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %21 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_30__* %20, %struct.TYPE_29__** %6, i32* %10)
  store i32 %21, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %2, align 4
  br label %121

25:                                               ; preds = %1
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  store %struct.TYPE_25__* %28, %struct.TYPE_25__** %9, align 8
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %17, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %12, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call %struct.TYPE_28__* @xfs_dir2_block_tail_p(i32* %38, i32* %39)
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %7, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = call %struct.TYPE_26__* @xfs_dir2_block_leaf_p(%struct.TYPE_28__* %41)
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %5, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load i32*, i32** %12, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = call i32 @xfs_dir2_dataptr_to_off(i32* %45, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %44, i64 %54
  %56 = bitcast i8* %55 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %56, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %60 = bitcast %struct.TYPE_27__* %59 to i8*
  %61 = load i32*, i32** %4, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = ptrtoint i8* %60 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @xfs_dir2_data_entsize(i32 %69)
  %71 = call i32 @xfs_dir2_data_make_free(i32* %57, %struct.TYPE_29__* %58, i32 %66, i32 %70, i32* %13, i32* %14)
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = call i32 @be32_add_cpu(i32* %73, i32 1)
  %75 = load i32*, i32** %17, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = call i32 @xfs_dir2_block_log_tail(i32* %75, %struct.TYPE_29__* %76)
  %78 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %79 = call i32 @cpu_to_be32(i32 %78)
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @xfs_dir2_block_log_leaf(i32* %85, %struct.TYPE_29__* %86, i32 %87, i32 %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %25
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @xfs_dir2_data_freescan(i32* %93, i32* %94, i32* %13)
  br label %96

96:                                               ; preds = %92, %25
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %17, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %102 = call i32 @xfs_dir2_data_log_header(i32* %100, %struct.TYPE_29__* %101)
  br label %103

103:                                              ; preds = %99, %96
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %106 = call i32 @xfs_dir2_data_check(%struct.TYPE_25__* %104, %struct.TYPE_29__* %105)
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @xfs_dir2_block_sfsize(%struct.TYPE_25__* %107, i32* %108, i32* %15)
  store i32 %109, i32* %16, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %111 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_25__* %110)
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %115 = call i32 @xfs_da_buf_done(%struct.TYPE_29__* %114)
  store i32 0, i32* %2, align 4
  br label %121

116:                                              ; preds = %103
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @xfs_dir2_block_to_sf(%struct.TYPE_30__* %117, %struct.TYPE_29__* %118, i32 %119, i32* %15)
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %116, %113, %23
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @trace_xfs_dir2_block_removename(%struct.TYPE_30__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_30__*, %struct.TYPE_29__**, i32*) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_block_tail_p(i32*, i32*) #1

declare dso_local %struct.TYPE_26__* @xfs_dir2_block_leaf_p(%struct.TYPE_28__*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_make_free(i32*, %struct.TYPE_29__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_entsize(i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(i32*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_25__*, %struct.TYPE_29__*) #1

declare dso_local i32 @xfs_dir2_block_sfsize(%struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_25__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_29__*) #1

declare dso_local i32 @xfs_dir2_block_to_sf(%struct.TYPE_30__*, %struct.TYPE_29__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
