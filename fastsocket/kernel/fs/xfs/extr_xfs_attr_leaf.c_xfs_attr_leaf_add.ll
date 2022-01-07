; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_add(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %15 = call i32 @trace_xfs_attr_leaf_add(%struct.TYPE_20__* %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %6, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be16_to_cpu(i32 %23)
  %25 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = icmp sle i64 %36, %42
  br label %44

44:                                               ; preds = %33, %2
  %45 = phi i1 [ false, %2 ], [ %43, %33 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store %struct.TYPE_23__* %49, %struct.TYPE_23__** %7, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @xfs_attr_leaf_newentsize(i32 %52, i32 %55, i32 %63, i32* null)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @be16_to_cpu(i32 %67)
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = add i64 %71, 24
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %75, align 8
  %77 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i64 %79
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %8, align 8
  store i32 0, i32* %11, align 4
  %81 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %142, %44
  %84 = load i32, i32* %13, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %147

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @be16_to_cpu(i32 %90)
  %92 = icmp sgt i32 %87, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be16_to_cpu(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %142

100:                                              ; preds = %86
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %142

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be16_to_cpu(i32 %110)
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @be16_to_cpu(i32 %114)
  %116 = icmp slt i32 %111, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = add i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %117, %106
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @be16_to_cpu(i32 %125)
  %127 = load i32, i32* %12, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %122
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @xfs_attr_leaf_add_work(%struct.TYPE_19__* %130, %struct.TYPE_20__* %131, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %3, align 4
  br label %184

135:                                              ; preds = %122
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be16_to_cpu(i32 %138)
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %135, %105, %93
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 -1
  store %struct.TYPE_22__* %144, %struct.TYPE_22__** %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %13, align 4
  br label %83

147:                                              ; preds = %83
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i32, i32* @ENOSPC, align 4
  %158 = call i32 @XFS_ERROR(i32 %157)
  store i32 %158, i32* %3, align 4
  br label %184

159:                                              ; preds = %152, %147
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %161, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = call i32 @xfs_attr_leaf_compact(%struct.TYPE_24__* %162, %struct.TYPE_19__* %163)
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @be16_to_cpu(i32 %170)
  %172 = sext i32 %171 to i64
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, 4
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %159
  %178 = load i32, i32* @ENOSPC, align 4
  %179 = call i32 @XFS_ERROR(i32 %178)
  store i32 %179, i32* %3, align 4
  br label %184

180:                                              ; preds = %159
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %183 = call i32 @xfs_attr_leaf_add_work(%struct.TYPE_19__* %181, %struct.TYPE_20__* %182, i32 0)
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %180, %177, %156, %129
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @trace_xfs_attr_leaf_add(%struct.TYPE_20__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_attr_leaf_newentsize(i32, i32, i32, i32*) #1

declare dso_local i32 @xfs_attr_leaf_add_work(%struct.TYPE_19__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @xfs_attr_leaf_compact(%struct.TYPE_24__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
