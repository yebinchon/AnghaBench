; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_fixhashpath.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_da_btree.c_xfs_da_fixhashpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_25__*, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_da_fixhashpath(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i64 %19
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %5, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %51 [
    i32 130, label %24
    i32 128, label %33
    i32 129, label %42
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = call i64 @xfs_attr_leaf_lasthash(%struct.TYPE_25__* %27, i32* %10)
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %127

32:                                               ; preds = %24
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = call i64 @xfs_dir2_leafn_lasthash(%struct.TYPE_25__* %36, i32* %10)
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %127

41:                                               ; preds = %33
  br label %51

42:                                               ; preds = %2
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = call i64 @xfs_da_node_lasthash(%struct.TYPE_25__* %45, i32* %10)
  store i64 %46, i64* %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %127

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %2, %50, %41, %32
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 -1
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %122, %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %127

59:                                               ; preds = %56
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  store %struct.TYPE_24__* %64, %struct.TYPE_24__** %6, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = icmp eq i32 %70, 129
  %72 = zext i1 %71 to i32
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i64 %79
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %7, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @be32_to_cpu(i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %59
  br label %127

88:                                               ; preds = %59
  %89 = load i64, i64* %8, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @cpu_to_be32(i64 %92)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %104, %struct.TYPE_23__* %105, i32 4)
  %107 = call i32 @xfs_da_log_buf(i32 %100, %struct.TYPE_25__* %103, i32 %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %109, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @be16_to_cpu(i32 %114)
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @be32_to_cpu(i32 %120)
  store i64 %121, i64* %8, align 8
  br label %122

122:                                              ; preds = %88
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 -1
  store %struct.TYPE_22__* %124, %struct.TYPE_22__** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %9, align 4
  br label %56

127:                                              ; preds = %31, %40, %49, %87, %56
  ret void
}

declare dso_local i64 @xfs_attr_leaf_lasthash(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @xfs_dir2_leafn_lasthash(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @xfs_da_node_lasthash(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
