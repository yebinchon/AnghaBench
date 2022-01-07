; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_to_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_to_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_26__, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_29__* }

@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_to_node(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %11 = call i32 @trace_xfs_attr_leaf_to_node(%struct.TYPE_30__* %10)
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %16 = call i32 @xfs_da_grow_inode(%struct.TYPE_30__* %15, i32* %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %139

20:                                               ; preds = %1
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %27 = load i32, i32* @XFS_ATTR_FORK, align 4
  %28 = call i32 @xfs_da_read_buf(i32 %23, %struct.TYPE_27__* %26, i32 0, i32 -1, %struct.TYPE_28__** %6, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %139

32:                                               ; preds = %20
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %34 = icmp ne %struct.TYPE_28__* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %7, align 8
  %37 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @XFS_ATTR_FORK, align 4
  %45 = call i32 @xfs_da_get_buf(i32 %39, %struct.TYPE_27__* %42, i32 %43, i32 -1, %struct.TYPE_28__** %7, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %139

49:                                               ; preds = %32
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = icmp ne %struct.TYPE_28__* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %55, align 8
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** %58, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @XFS_LBSIZE(i32 %62)
  %64 = call i32 @memcpy(%struct.TYPE_29__* %56, %struct.TYPE_29__* %59, i64 %63)
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %66 = call i32 @xfs_da_buf_done(%struct.TYPE_28__* %65)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  %67 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @XFS_LBSIZE(i32 %73)
  %75 = sub nsw i64 %74, 1
  %76 = call i32 @xfs_da_log_buf(i32 %69, %struct.TYPE_28__* %70, i32 0, i64 %75)
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %78 = load i32, i32* @XFS_ATTR_FORK, align 4
  %79 = call i32 @xfs_da_node_create(%struct.TYPE_30__* %77, i32 0, i32 1, %struct.TYPE_28__** %6, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %49
  br label %139

83:                                               ; preds = %49
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %85, align 8
  store %struct.TYPE_29__* %86, %struct.TYPE_29__** %4, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %88, align 8
  store %struct.TYPE_29__* %89, %struct.TYPE_29__** %3, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @be16_to_cpu(i32 %94)
  %96 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %101, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @be16_to_cpu(i32 %106)
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  store i32 %112, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @cpu_to_be32(i32 %118)
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  store i32 %119, i32* %124, align 4
  %125 = call i32 @cpu_to_be16(i32 1)
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @XFS_LBSIZE(i32 %135)
  %137 = sub nsw i64 %136, 1
  %138 = call i32 @xfs_da_log_buf(i32 %131, %struct.TYPE_28__* %132, i32 0, i64 %137)
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %83, %82, %48, %31, %19
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %141 = icmp ne %struct.TYPE_28__* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %144 = call i32 @xfs_da_buf_done(%struct.TYPE_28__* %143)
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %147 = icmp ne %struct.TYPE_28__* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %150 = call i32 @xfs_da_buf_done(%struct.TYPE_28__* %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @trace_xfs_attr_leaf_to_node(%struct.TYPE_30__*) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_30__*, i32*) #1

declare dso_local i32 @xfs_da_read_buf(i32, %struct.TYPE_27__*, i32, i32, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_da_get_buf(i32, %struct.TYPE_27__*, i32, i32, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_29__*, %struct.TYPE_29__*, i64) #1

declare dso_local i64 @XFS_LBSIZE(i32) #1

declare dso_local i32 @xfs_da_buf_done(%struct.TYPE_28__*) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_28__*, i32, i64) #1

declare dso_local i32 @xfs_da_node_create(%struct.TYPE_30__*, i32, i32, %struct.TYPE_28__**, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
