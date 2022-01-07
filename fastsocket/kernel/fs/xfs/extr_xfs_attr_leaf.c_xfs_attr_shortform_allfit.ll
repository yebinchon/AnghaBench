; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_allfit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_allfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__, %struct.TYPE_23__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@XFS_ATTR_SF_ENTSIZE_MAX = common dso_local global i32 0, align 4
@XFS_MOUNT_ATTR2 = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_allfit(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16_to_cpu(i32 %18)
  %20 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i64 0
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %7, align 8
  store i32 4, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %86, %2
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @be16_to_cpu(i32 %33)
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %91

36:                                               ; preds = %28
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %86

44:                                               ; preds = %36
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %116

52:                                               ; preds = %44
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.TYPE_22__* @xfs_attr_leaf_name_local(%struct.TYPE_21__* %53, i32 %54)
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %8, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @XFS_ATTR_SF_ENTSIZE_MAX, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %116

62:                                               ; preds = %52
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be16_to_cpu(i32 %65)
  %67 = load i32, i32* @XFS_ATTR_SF_ENTSIZE_MAX, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %116

70:                                               ; preds = %62
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 3, %74
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %70, %43
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 1
  store %struct.TYPE_23__* %88, %struct.TYPE_23__** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %28

91:                                               ; preds = %28
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @XFS_MOUNT_ATTR2, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %91
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %109, 4
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 -1, i32* %3, align 4
  br label %116

112:                                              ; preds = %107, %100, %91
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @xfs_attr_shortform_bytesfit(%struct.TYPE_19__* %113, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %111, %69, %61, %51
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.TYPE_22__* @xfs_attr_leaf_name_local(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @xfs_attr_shortform_bytesfit(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
