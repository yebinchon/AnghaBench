; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_to_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_shortform_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_23__ = type { %struct.TYPE_19__, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { i64, i32, i32*, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr_shortform_to_leaf(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_22__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = call i32 @trace_xfs_attr_sf_to_leaf(%struct.TYPE_22__* %14)
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 12
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %3, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %13, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %4, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be16_to_cpu(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_alloc(i32 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @memcpy(i8* %39, i8* %43, i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = bitcast i8* %46 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %47, %struct.TYPE_23__** %4, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* @XFS_ATTR_FORK, align 4
  %52 = call i32 @xfs_idata_realloc(%struct.TYPE_20__* %48, i32 %50, i32 %51)
  store i32* null, i32** %12, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %54 = call i32 @xfs_da_grow_inode(%struct.TYPE_22__* %53, i64* %11)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %1
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @EIO, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %196

62:                                               ; preds = %57
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @XFS_ATTR_FORK, align 4
  %66 = call i32 @xfs_idata_realloc(%struct.TYPE_20__* %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @memcpy(i8* %70, i8* %71, i32 %72)
  br label %196

74:                                               ; preds = %1
  %75 = load i64, i64* %11, align 8
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @xfs_attr_leaf_create(%struct.TYPE_22__* %79, i64 %80, i32** %12)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %74
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @xfs_da_shrink_inode(%struct.TYPE_22__* %85, i32 0, i32* %86)
  store i32 %87, i32* %8, align 4
  store i32* null, i32** %12, align 8
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %196

91:                                               ; preds = %84
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @XFS_ATTR_FORK, align 4
  %95 = call i32 @xfs_idata_realloc(%struct.TYPE_20__* %92, i32 %93, i32 %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @memcpy(i8* %99, i8* %100, i32 %101)
  br label %196

103:                                              ; preds = %74
  %104 = bitcast %struct.TYPE_22__* %6 to i8*
  %105 = call i32 @memset(i8* %104, i32 0, i32 72)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 12
  store %struct.TYPE_20__* %106, %struct.TYPE_20__** %107, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 11
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 10
  store i32 %114, i32* %115, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 9
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @XFS_ATTR_FORK, align 4
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 8
  store i32 %120, i32* %121, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 7
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 6
  store i32 %126, i32* %127, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i64 0
  store %struct.TYPE_24__* %131, %struct.TYPE_24__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %192, %103
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %133, %137
  br i1 %138, label %139, label %195

139:                                              ; preds = %132
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 5
  store i32* %142, i32** %143, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store i64 %146, i64* %147, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 4
  store i32* %153, i32** %154, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 3
  store i32 %157, i32* %158, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @xfs_da_hashname(i32* %161, i64 %164)
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 2
  store i32 %165, i32* %166, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32 %169)
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  store i32 %170, i32* %171, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = call i32 @xfs_attr_leaf_lookup_int(i32* %172, %struct.TYPE_22__* %6)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @ENOATTR, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @ASSERT(i32 %177)
  %179 = load i32*, i32** %12, align 8
  %180 = call i32 @xfs_attr_leaf_add(i32* %179, %struct.TYPE_22__* %6)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @ENOSPC, align 4
  %183 = icmp ne i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @ASSERT(i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %139
  br label %196

189:                                              ; preds = %139
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %191 = call %struct.TYPE_24__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_24__* %190)
  store %struct.TYPE_24__* %191, %struct.TYPE_24__** %5, align 8
  br label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %132

195:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %196

196:                                              ; preds = %195, %188, %91, %90, %62, %61
  %197 = load i32*, i32** %12, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32*, i32** %12, align 8
  %201 = call i32 @xfs_da_buf_done(i32* %200)
  br label %202

202:                                              ; preds = %199, %196
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @kmem_free(i8* %203)
  %205 = load i32, i32* %8, align 4
  ret i32 %205
}

declare dso_local i32 @trace_xfs_attr_sf_to_leaf(%struct.TYPE_22__*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @xfs_da_grow_inode(%struct.TYPE_22__*, i64*) #1

declare dso_local i32 @xfs_attr_leaf_create(%struct.TYPE_22__*, i64, i32**) #1

declare dso_local i32 @xfs_da_shrink_inode(%struct.TYPE_22__*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @xfs_da_hashname(i32*, i64) #1

declare dso_local i32 @XFS_ATTR_NSP_ONDISK_TO_ARGS(i32) #1

declare dso_local i32 @xfs_attr_leaf_lookup_int(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @xfs_attr_leaf_add(i32*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @XFS_ATTR_SF_NEXTENTRY(%struct.TYPE_24__*) #1

declare dso_local i32 @xfs_da_buf_done(i32*) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
