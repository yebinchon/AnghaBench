; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_lookup(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = call i32 @trace_xfs_dir2_block_lookup(%struct.TYPE_19__* %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_19__* %15, %struct.TYPE_18__** %6, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %1
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %9, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %32 = call i32 @xfs_dir2_data_check(%struct.TYPE_15__* %30, %struct.TYPE_18__* %31)
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @xfs_dir2_block_tail_p(i32* %33, i32* %34)
  store i32* %35, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_16__* @xfs_dir2_block_leaf_p(i32* %36)
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32*, i32** %12, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = call i32 @xfs_dir2_dataptr_to_off(i32* %40, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %39, i64 %49
  %51 = bitcast i8* %50 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %8, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be64_to_cpu(i32 %54)
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @xfs_dir_cilookup_result(%struct.TYPE_19__* %58, i32 %61, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %70 = call i32 @xfs_da_brelse(i32 %68, %struct.TYPE_18__* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @XFS_ERROR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %20, %18
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @trace_xfs_dir2_block_lookup(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_19__*, %struct.TYPE_18__**, i32*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_15__*, %struct.TYPE_18__*) #1

declare dso_local i32* @xfs_dir2_block_tail_p(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_dir_cilookup_result(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @xfs_da_brelse(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
