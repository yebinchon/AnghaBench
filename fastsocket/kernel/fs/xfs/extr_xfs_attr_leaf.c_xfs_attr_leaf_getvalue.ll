; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_getvalue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_24__*, %struct.TYPE_17__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, %struct.TYPE_18__*, i32, i8*, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32*, i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32* }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_leaf_getvalue(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @be16_to_cpu(i32 %18)
  %20 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be16_to_cpu(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @XFS_LBSIZE(i32 %33)
  %35 = sdiv i32 %34, 8
  %36 = icmp slt i32 %28, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @be16_to_cpu(i32 %45)
  %47 = icmp slt i32 %41, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i64 %56
  store %struct.TYPE_24__* %57, %struct.TYPE_24__** %8, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %135

64:                                               ; preds = %2
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = call %struct.TYPE_23__* @xfs_attr_leaf_name_local(%struct.TYPE_21__* %65, i64 %69)
  store %struct.TYPE_23__* %70, %struct.TYPE_23__** %9, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @memcmp(i32 %82, i32* %85, i64 %88)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @be16_to_cpu(i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ATTR_KERNOVAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %64
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %3, align 4
  br label %211

107:                                              ; preds = %64
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* @ERANGE, align 4
  %118 = call i32 @XFS_ERROR(i32 %117)
  store i32 %118, i32* %3, align 4
  br label %211

119:                                              ; preds = %107
  %120 = load i32, i32* %6, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @memcpy(i32 %125, i32* %132, i32 %133)
  br label %210

135:                                              ; preds = %2
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call %struct.TYPE_22__* @xfs_attr_leaf_name_remote(%struct.TYPE_21__* %136, i64 %140)
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %10, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %144, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @memcmp(i32 %153, i32* %156, i64 %159)
  %161 = icmp eq i64 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 @ASSERT(i32 %162)
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @be32_to_cpu(i32 %166)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* %6, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @be32_to_cpu(i32 %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 6
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @XFS_B_TO_FSB(i32 %179, i32 %180)
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @ATTR_KERNOVAL, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %135
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  store i32 0, i32* %3, align 4
  br label %211

194:                                              ; preds = %135
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @ERANGE, align 4
  %205 = call i32 @XFS_ERROR(i32 %204)
  store i32 %205, i32* %3, align 4
  br label %211

206:                                              ; preds = %194
  %207 = load i32, i32* %6, align 4
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 3
  store i32 %207, i32* %209, align 4
  br label %210

210:                                              ; preds = %206, %119
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %210, %200, %190, %113, %103
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @XFS_LBSIZE(i32) #1

declare dso_local %struct.TYPE_23__* @xfs_attr_leaf_name_local(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @xfs_attr_leaf_name_remote(%struct.TYPE_21__*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @XFS_B_TO_FSB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
