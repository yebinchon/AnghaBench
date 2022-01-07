; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_clearflag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_clearflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__*, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32, i32, i8*, i8*, i32, i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_clearflag(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %10 = call i32 @trace_xfs_attr_leaf_clearflag(%struct.TYPE_23__* %9)
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @XFS_ATTR_FORK, align 4
  %21 = call i32 @xfs_da_read_buf(i32 %13, i32 %16, i32 %19, i32 -1, %struct.TYPE_22__** %7, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %135

26:                                               ; preds = %1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %28 = icmp ne %struct.TYPE_22__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %4, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be16_to_cpu(i32 %38)
  %40 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @be16_to_cpu(i32 %50)
  %52 = icmp slt i64 %46, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i64 %66
  store %struct.TYPE_25__* %67, %struct.TYPE_25__** %5, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %84, %struct.TYPE_25__* %85, i32 40)
  %87 = call i32 @xfs_da_log_buf(i32 %82, %struct.TYPE_22__* %83, i32 %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %26
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call %struct.TYPE_25__* @xfs_attr_leaf_name_remote(%struct.TYPE_24__* %101, i64 %104)
  store %struct.TYPE_25__* %105, %struct.TYPE_25__** %6, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @cpu_to_be32(i64 %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @cpu_to_be32(i64 %114)
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %124 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %122, %struct.TYPE_25__* %123, i32 40)
  %125 = call i32 @xfs_da_log_buf(i32 %120, %struct.TYPE_22__* %121, i32 %124)
  br label %126

126:                                              ; preds = %92, %26
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %128 = call i32 @xfs_da_buf_done(%struct.TYPE_22__* %127)
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @xfs_trans_roll(i32* %130, i32 %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %126, %24
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @trace_xfs_attr_leaf_clearflag(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_da_read_buf(i32, i32, i32, i32, %struct.TYPE_22__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__*, %struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_25__* @xfs_attr_leaf_name_remote(%struct.TYPE_24__*, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_22__*) #1

declare dso_local i32 @xfs_trans_roll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
