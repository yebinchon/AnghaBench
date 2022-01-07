; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_replace(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %14 = call i32 @trace_xfs_dir2_leaf_replace(%struct.TYPE_23__* %13)
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = call i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_23__* %15, %struct.TYPE_22__** %9, i32* %8, %struct.TYPE_22__** %4)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %6, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %10, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i64 %31
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %11, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = bitcast %struct.TYPE_19__* %35 to i8*
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = call i32 @xfs_dir2_dataptr_to_off(i32 %39, i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %36, i64 %45
  %47 = bitcast i8* %46 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %47, %struct.TYPE_21__** %5, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be64_to_cpu(i32 %53)
  %55 = icmp ne i64 %50, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @cpu_to_be64(i64 %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %12, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = call i32 @xfs_dir2_data_log_entry(i32* %67, %struct.TYPE_22__* %68, %struct.TYPE_21__* %69)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = call i32 @xfs_da_buf_done(%struct.TYPE_22__* %71)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = call i32 @xfs_dir2_leaf_check(%struct.TYPE_18__* %73, %struct.TYPE_22__* %74)
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = call i32 @xfs_da_brelse(i32* %76, %struct.TYPE_22__* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %20, %18
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @trace_xfs_dir2_leaf_replace(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_23__*, %struct.TYPE_22__**, i32*, %struct.TYPE_22__**) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @xfs_dir2_data_log_entry(i32*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_22__*) #1

declare dso_local i32 @xfs_dir2_leaf_check(%struct.TYPE_18__*, %struct.TYPE_22__*) #1

declare dso_local i32 @xfs_da_brelse(i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
