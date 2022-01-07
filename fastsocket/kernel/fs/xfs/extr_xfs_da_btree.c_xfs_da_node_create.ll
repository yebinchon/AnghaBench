; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_node_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i8*, i64, i64 }

@XFS_DA_NODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_node_create(%struct.TYPE_16__* %0, i32 %1, i32 %2, %struct.TYPE_14__** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_14__** %3, %struct.TYPE_14__*** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = call i32 @trace_xfs_da_node_create(%struct.TYPE_16__* %16)
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %15, align 8
  %21 = load i32*, i32** %15, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @xfs_da_get_buf(i32* %21, i32 %24, i32 %25, i32 -1, %struct.TYPE_14__** %13, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %75

32:                                               ; preds = %5
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %34 = icmp ne %struct.TYPE_14__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %12, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @XFS_DA_NODE_MAGIC, align 4
  %49 = call i8* @cpu_to_be16(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i8* %49, i8** %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @cpu_to_be16(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_15__* %68, %struct.TYPE_12__* %70, i32 48)
  %72 = call i32 @xfs_da_log_buf(i32* %66, %struct.TYPE_14__* %67, i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %74 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %74, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %32, %30
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @trace_xfs_da_node_create(%struct.TYPE_16__*) #1

declare dso_local i32 @xfs_da_get_buf(i32*, i32, i32, i32, %struct.TYPE_14__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_da_log_buf(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.TYPE_15__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
