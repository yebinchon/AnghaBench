; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_flipflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_attr_leaf.c_xfs_attr_leaf_flipflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, i64, i64, i32, i32, i64, i64 }
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
define dso_local i32 @xfs_attr_leaf_flipflags(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = call i32 @trace_xfs_attr_leaf_flipflags(%struct.TYPE_23__* %12)
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @XFS_ATTR_FORK, align 4
  %24 = call i32 @xfs_da_read_buf(i32 %16, i32 %19, i64 %22, i32 -1, %struct.TYPE_22__** %9, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %2, align 4
  br label %260

29:                                               ; preds = %1
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %31 = icmp ne %struct.TYPE_22__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %29
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @XFS_ATTR_FORK, align 4
  %52 = call i32 @xfs_da_read_buf(i32 %44, i32 %47, i64 %50, i32 -1, %struct.TYPE_22__** %10, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %2, align 4
  br label %260

57:                                               ; preds = %41
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %59 = icmp ne %struct.TYPE_22__* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  br label %64

62:                                               ; preds = %29
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %10, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %66, align 8
  store %struct.TYPE_24__* %67, %struct.TYPE_24__** %4, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @be16_to_cpu(i32 %72)
  %74 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @be16_to_cpu(i32 %84)
  %86 = icmp slt i64 %80, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i64 %100
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %6, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  store %struct.TYPE_24__* %104, %struct.TYPE_24__** %5, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @be16_to_cpu(i32 %109)
  %111 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @be16_to_cpu(i32 %121)
  %123 = icmp slt i64 %117, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i64 %137
  store %struct.TYPE_25__* %138, %struct.TYPE_25__** %7, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %143 = and i32 %141, %142
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %149 = and i32 %147, %148
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @ASSERT(i32 %151)
  %153 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %165 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %163, %struct.TYPE_25__* %164, i32 40)
  %166 = call i32 @xfs_da_log_buf(i32 %161, %struct.TYPE_22__* %162, i32 %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %64
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @ASSERT(i32 %178)
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = call %struct.TYPE_25__* @xfs_attr_leaf_name_remote(%struct.TYPE_24__* %180, i64 %183)
  store %struct.TYPE_25__* %184, %struct.TYPE_25__** %8, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 7
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @cpu_to_be32(i64 %187)
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = call i8* @cpu_to_be32(i64 %193)
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %203 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %201, %struct.TYPE_25__* %202, i32 40)
  %204 = call i32 @xfs_da_log_buf(i32 %199, %struct.TYPE_22__* %200, i32 %203)
  br label %205

205:                                              ; preds = %171, %64
  %206 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 8
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %217 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %215, %struct.TYPE_25__* %216, i32 40)
  %218 = call i32 @xfs_da_log_buf(i32 %213, %struct.TYPE_22__* %214, i32 %217)
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %205
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = call %struct.TYPE_25__* @xfs_attr_leaf_name_remote(%struct.TYPE_24__* %226, i64 %229)
  store %struct.TYPE_25__* %230, %struct.TYPE_25__** %8, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 3
  store i8* null, i8** %232, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  store i8* null, i8** %234, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %241 = call i32 @XFS_DA_LOGRANGE(%struct.TYPE_24__* %239, %struct.TYPE_25__* %240, i32 40)
  %242 = call i32 @xfs_da_log_buf(i32 %237, %struct.TYPE_22__* %238, i32 %241)
  br label %243

243:                                              ; preds = %225, %205
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %245 = call i32 @xfs_da_buf_done(%struct.TYPE_22__* %244)
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %248 = icmp ne %struct.TYPE_22__* %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %251 = call i32 @xfs_da_buf_done(%struct.TYPE_22__* %250)
  br label %252

252:                                              ; preds = %249, %243
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @xfs_trans_roll(i32* %254, i32 %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %252, %55, %27
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @trace_xfs_attr_leaf_flipflags(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_da_read_buf(i32, i32, i64, i32, %struct.TYPE_22__**, i32) #1

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
