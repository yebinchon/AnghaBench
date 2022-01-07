; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_block.c_xfs_dir2_block_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_18__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_replace(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %14 = call i32 @trace_xfs_dir2_block_replace(%struct.TYPE_20__* %13)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %16 = call i32 @xfs_dir2_block_lookup_int(%struct.TYPE_20__* %15, %struct.TYPE_19__** %6, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %4, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32* @xfs_dir2_block_tail_p(i32* %30, i32* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_17__* @xfs_dir2_block_leaf_p(i32* %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = call i32 @xfs_dir2_dataptr_to_off(i32* %37, i32 %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %36, i64 %46
  %48 = bitcast i8* %47 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %8, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @be64_to_cpu(i32 %51)
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @cpu_to_be64(i64 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %70 = call i32 @xfs_dir2_data_log_entry(i32 %67, %struct.TYPE_19__* %68, %struct.TYPE_18__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %73 = call i32 @xfs_dir2_data_check(%struct.TYPE_16__* %71, %struct.TYPE_19__* %72)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = call i32 @xfs_da_buf_done(%struct.TYPE_19__* %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %20, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @trace_xfs_dir2_block_replace(%struct.TYPE_20__*) #1

declare dso_local i32 @xfs_dir2_block_lookup_int(%struct.TYPE_20__*, %struct.TYPE_19__**, i32*) #1

declare dso_local i32* @xfs_dir2_block_tail_p(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @xfs_dir2_block_leaf_p(i32*) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(i32, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @xfs_dir2_data_check(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
