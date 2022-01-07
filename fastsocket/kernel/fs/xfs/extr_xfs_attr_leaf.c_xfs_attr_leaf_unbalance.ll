; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_unbalance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_unbalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64, i8*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i64, i64, i64, i8*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_NAME_ALIGN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr_leaf_unbalance(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = call i32 @trace_xfs_attr_leaf_unbalance(%struct.TYPE_16__* %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %7, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %8, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @be16_to_cpu(i64 %50)
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @be16_to_cpu(i64 %61)
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %10, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %11, align 8
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @be16_to_cpu(i64 %78)
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @be32_to_cpu(i32 %84)
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %124

92:                                               ; preds = %3
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %97, align 8
  %99 = call i64 @xfs_attr_leaf_order(%struct.TYPE_23__* %95, %struct.TYPE_23__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %92
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @be16_to_cpu(i64 %106)
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %102, i32 0, %struct.TYPE_21__* %103, i32 0, i32 %107, i32* %108)
  br label %123

110:                                              ; preds = %92
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @be16_to_cpu(i64 %115)
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @be16_to_cpu(i64 %119)
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %111, i32 0, %struct.TYPE_21__* %112, i32 %116, i32 %120, i32* %121)
  br label %123

123:                                              ; preds = %110, %101
  br label %236

124:                                              ; preds = %3
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* @KM_SLEEP, align 4
  %129 = call i8* @kmem_alloc(i64 %127, i32 %128)
  store i8* %129, i8** %14, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = icmp ne i8* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = load i8*, i8** %14, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memset(i8* %134, i32 0, i64 %137)
  %139 = load i8*, i8** %14, align 8
  %140 = bitcast i8* %139 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %140, %struct.TYPE_21__** %9, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %12, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 4
  %147 = bitcast %struct.TYPE_17__* %144 to i8*
  %148 = bitcast %struct.TYPE_17__* %146 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %147, i8* align 8 %148, i64 8, i1 false)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i8* @cpu_to_be16(i64 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 3
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 3
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %170, label %161

161:                                              ; preds = %124
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @XFS_ATTR_LEAF_NAME_ALIGN, align 8
  %166 = sub nsw i64 %164, %165
  %167 = call i8* @cpu_to_be16(i64 %166)
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %161, %124
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 2
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = call i64 @xfs_attr_leaf_order(%struct.TYPE_23__* %175, %struct.TYPE_23__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %203

181:                                              ; preds = %170
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @be16_to_cpu(i64 %186)
  %188 = load i32*, i32** %13, align 8
  %189 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %182, i32 0, %struct.TYPE_21__* %183, i32 0, i32 %187, i32* %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @be16_to_cpu(i64 %195)
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @be16_to_cpu(i64 %199)
  %201 = load i32*, i32** %13, align 8
  %202 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %190, i32 0, %struct.TYPE_21__* %191, i32 %196, i32 %200, i32* %201)
  br label %225

203:                                              ; preds = %170
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @be16_to_cpu(i64 %208)
  %210 = load i32*, i32** %13, align 8
  %211 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %204, i32 0, %struct.TYPE_21__* %205, i32 0, i32 %209, i32* %210)
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @be16_to_cpu(i64 %217)
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @be16_to_cpu(i64 %221)
  %223 = load i32*, i32** %13, align 8
  %224 = call i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__* %212, i32 0, %struct.TYPE_21__* %213, i32 %218, i32 %222, i32* %223)
  br label %225

225:                                              ; preds = %203, %181
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %227 = bitcast %struct.TYPE_21__* %226 to i8*
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %229 = bitcast %struct.TYPE_21__* %228 to i8*
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @memcpy(i8* %227, i8* %229, i64 %232)
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 @kmem_free(i8* %234)
  br label %236

236:                                              ; preds = %225, %123
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %243, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %247, 1
  %249 = trunc i64 %248 to i32
  %250 = call i32 @xfs_da_log_buf(i32 %241, %struct.TYPE_23__* %244, i32 0, i32 %249)
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %252, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @be16_to_cpu(i64 %257)
  %259 = sub nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @be32_to_cpu(i32 %263)
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 1
  store i8* %264, i8** %266, align 8
  ret void
}

declare dso_local i32 @trace_xfs_attr_leaf_unbalance(%struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @be16_to_cpu(i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_attr_leaf_order(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @xfs_attr_leaf_moveents(%struct.TYPE_21__*, i32, %struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kmem_free(i8*) #1

declare dso_local i32 @xfs_da_log_buf(i32, %struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
