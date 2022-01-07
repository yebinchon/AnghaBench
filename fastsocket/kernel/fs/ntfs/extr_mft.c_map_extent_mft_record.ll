; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mft.c_map_extent_mft_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_mft.c_map_extent_mft_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__**, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Mapping extent mft record 0x%lx (base mft record 0x%lx).\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Done 1.\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Found stale extent mft reference! Corrupt filesystem. Run chkdsk.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to map extent mft record, error code %ld.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to allocate internal buffer.\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Done 2.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @map_extent_mft_record(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_22__** %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__** null, %struct.TYPE_22__*** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @MREF(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @MSEQNO(i32 %19)
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %39, align 8
  store %struct.TYPE_22__** %40, %struct.TYPE_22__*** %10, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %67, %36
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %49, i64 %51
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %67

58:                                               ; preds = %47
  %59 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %59, i64 %61
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %9, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = call i32 @atomic_inc(i32* %65)
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %41

70:                                               ; preds = %58, %41
  br label %71

71:                                               ; preds = %70, %3
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = icmp ne %struct.TYPE_22__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %135

77:                                               ; preds = %71
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = call i32 @atomic_dec(i32* %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = call %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__* %84)
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** %8, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = call i32 @atomic_dec(i32* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_23__* %89)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @likely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %77
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le16_to_cpu(i32 %99)
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @likely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %109 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %109, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %4, align 8
  br label %313

111:                                              ; preds = %96
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %113 = call i32 @unmap_mft_record(%struct.TYPE_22__* %112)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @ntfs_error(i32 %118, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  %122 = call %struct.TYPE_23__* @ERR_PTR(i32 %121)
  store %struct.TYPE_23__* %122, %struct.TYPE_23__** %4, align 8
  br label %313

123:                                              ; preds = %77
  br label %124

124:                                              ; preds = %179, %123
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %131 = call i32 @PTR_ERR(%struct.TYPE_23__* %130)
  %132 = sub nsw i32 0, %131
  %133 = call i32 (i32, i8*, ...) @ntfs_error(i32 %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %132)
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %134, %struct.TYPE_23__** %4, align 8
  br label %313

135:                                              ; preds = %71
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %12, align 8
  %142 = call %struct.TYPE_22__* @ntfs_new_extent_inode(i32 %140, i64 %141)
  store %struct.TYPE_22__* %142, %struct.TYPE_22__** %9, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %144 = icmp ne %struct.TYPE_22__* %143, null
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i64 @unlikely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %135
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = call i32 @mutex_unlock(i32* %151)
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 2
  %155 = call i32 @atomic_dec(i32* %154)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  %158 = call %struct.TYPE_23__* @ERR_PTR(i32 %157)
  store %struct.TYPE_23__* %158, %struct.TYPE_23__** %4, align 8
  br label %313

159:                                              ; preds = %135
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 5
  store %struct.TYPE_20__* %162, %struct.TYPE_20__** %164, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 6
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  store i32 -1, i32* %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  store %struct.TYPE_22__* %170, %struct.TYPE_22__** %173, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %175 = call %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__* %174)
  store %struct.TYPE_23__* %175, %struct.TYPE_23__** %8, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %177 = call i64 @IS_ERR(%struct.TYPE_23__* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %159
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 3
  %182 = call i32 @mutex_unlock(i32* %181)
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = call i32 @atomic_dec(i32* %184)
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %187 = call i32 @ntfs_clear_extent_inode(%struct.TYPE_22__* %186)
  br label %124

188:                                              ; preds = %159
  %189 = load i64, i64* %13, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @le16_to_cpu(i32 %194)
  %196 = load i64, i64* %13, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i32, i8*, ...) @ntfs_error(i32 %203, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  %207 = call %struct.TYPE_23__* @ERR_PTR(i32 %206)
  store %struct.TYPE_23__* %207, %struct.TYPE_23__** %8, align 8
  br label %297

208:                                              ; preds = %191, %188
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, 3
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %275, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 4
  %219 = sext i32 %218 to i64
  %220 = mul i64 %219, 8
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* @GFP_NOFS, align 4
  %224 = call %struct.TYPE_22__** @kmalloc(i32 %222, i32 %223)
  store %struct.TYPE_22__** %224, %struct.TYPE_22__*** %15, align 8
  %225 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %226 = icmp ne %struct.TYPE_22__** %225, null
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %214
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @ntfs_error(i32 %236, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  %240 = call %struct.TYPE_23__* @ERR_PTR(i32 %239)
  store %struct.TYPE_23__* %240, %struct.TYPE_23__** %8, align 8
  br label %297

241:                                              ; preds = %214
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %270

246:                                              ; preds = %241
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %249, align 8
  %251 = icmp ne %struct.TYPE_22__** %250, null
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @BUG_ON(i32 %253)
  %255 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %258, align 8
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 %261, 32
  %263 = trunc i64 %262 to i32
  %264 = call i32 @memcpy(%struct.TYPE_22__** %255, %struct.TYPE_22__** %259, i32 %263)
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %267, align 8
  %269 = call i32 @kfree(%struct.TYPE_22__** %268)
  br label %270

270:                                              ; preds = %246, %241
  %271 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 4
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 0
  store %struct.TYPE_22__** %271, %struct.TYPE_22__*** %274, align 8
  br label %275

275:                                              ; preds = %270, %208
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %279, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %282, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %280, i64 %285
  store %struct.TYPE_22__* %276, %struct.TYPE_22__** %286, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 3
  %289 = call i32 @mutex_unlock(i32* %288)
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  %292 = call i32 @atomic_dec(i32* %291)
  %293 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %295 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %294, %struct.TYPE_22__** %295, align 8
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %296, %struct.TYPE_23__** %4, align 8
  br label %313

297:                                              ; preds = %231, %198
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %299 = call i32 @unmap_mft_record(%struct.TYPE_22__* %298)
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 3
  %302 = call i32 @mutex_unlock(i32* %301)
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 2
  %305 = call i32 @atomic_dec(i32* %304)
  %306 = load i32, i32* %14, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %297
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %310 = call i32 @ntfs_clear_extent_inode(%struct.TYPE_22__* %309)
  br label %311

311:                                              ; preds = %308, %297
  %312 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %312, %struct.TYPE_23__** %4, align 8
  br label %313

313:                                              ; preds = %311, %275, %149, %124, %111, %106
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  ret %struct.TYPE_23__* %314
}

declare dso_local i64 @MREF(i32) #1

declare dso_local i64 @MSEQNO(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_23__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_22__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ntfs_new_extent_inode(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_clear_extent_inode(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__** @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__**, %struct.TYPE_22__**, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
