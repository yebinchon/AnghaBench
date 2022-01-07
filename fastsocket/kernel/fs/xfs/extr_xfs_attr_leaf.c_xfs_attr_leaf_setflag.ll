; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_setflag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_setflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_22__*, %struct.TYPE_18__ }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__* }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_setflag(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %10 = call i32 @trace_xfs_attr_leaf_setflag(%struct.TYPE_20__* %9)
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @XFS_ATTR_FORK, align 4
  %21 = call i32 @xfs_da_read_buf(i32 %13, i32 %16, i32 %19, i32 -1, %struct.TYPE_19__** %7, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %2, align 4
  br label %122

26:                                               ; preds = %1
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = icmp ne %struct.TYPE_19__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %4, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be16_to_cpu(i32 %38)
  %40 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @be16_to_cpu(i32 %50)
  %52 = icmp slt i64 %46, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i64 %66
  store %struct.TYPE_22__* %67, %struct.TYPE_22__** %5, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_21__* %85, %struct.TYPE_22__* %86, i32 24)
  %88 = call i32 @xfs_da_log_buf(i32 %83, %struct.TYPE_19__* %84, i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %26
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call %struct.TYPE_22__* @xfs_attr_leaf_name_remote(%struct.TYPE_21__* %96, i64 %99)
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %6, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_21__* %109, %struct.TYPE_22__* %110, i32 24)
  %112 = call i32 @xfs_da_log_buf(i32 %107, %struct.TYPE_19__* %108, i32 %111)
  br label %113

113:                                              ; preds = %95, %26
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = call i32 @xfs_da_buf_done(%struct.TYPE_19__* %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @xfs_trans_roll(i32* %117, i32 %120)
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %113, %24
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @trace_xfs_attr_leaf_setflag(%struct.TYPE_20__*) #1

declare dso_local i32 @xfs_da_read_buf(i32, i32, i32, i32, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @xfs_attr_leaf_name_remote(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_19__*) #1

declare dso_local i32 @xfs_trans_roll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
