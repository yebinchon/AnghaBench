; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_mos_leaks.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_mos_leaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i8* }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_40__ = type { %struct.TYPE_29__**, i32, %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, i32, %struct.TYPE_41__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_29__ = type { i32** }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_41__ = type { i32*, i32*, i32*, %struct.TYPE_27__*, i32, i32, i32, %struct.TYPE_34__*, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i64 0, align 8
@DDT_TYPES = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_FUNCTIONS = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@mos_refd_objs = common dso_local global i32 0, align 4
@DMU_OT_NEWTYPE = common dso_local global i32 0, align 4
@dmu_ot_byteswap = common dso_local global %struct.TYPE_32__* null, align 8
@dmu_ot = common dso_local global %struct.TYPE_33__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"MOS object %llu (%s) leaked\0A\00", align 1
@mos_leaks_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_40__*)* @dump_mos_leaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_mos_leaks(%struct.TYPE_40__* %0) #0 {
  %2 = alloca %struct.TYPE_40__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %2, align 8
  store i32 0, i32* %3, align 4
  %16 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %16, i32 0, i32 18
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %19, i32 0, i32 6
  %21 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  store %struct.TYPE_41__* %21, %struct.TYPE_41__** %5, align 8
  %22 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %23 = call i32 @mos_obj_refd(i32 %22)
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mos_obj_refd(i32 %26)
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mos_obj_refd(i32 %30)
  %32 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mos_obj_refd(i32 %34)
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mos_obj_refd(i32 %38)
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @mos_obj_refd(i32 %42)
  %44 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mos_obj_refd(i32 %46)
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mos_obj_refd(i32 %50)
  %52 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mos_obj_refd(i32 %54)
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mos_obj_refd(i32 %58)
  %60 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mos_obj_refd(i32 %62)
  %64 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @mos_obj_refd(i32 %66)
  %68 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %68, i32 0, i32 6
  %70 = load %struct.TYPE_41__*, %struct.TYPE_41__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mos_obj_refd(i32 %72)
  %74 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %74, i32 0, i32 6
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mos_obj_refd(i32 %78)
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_41__*, %struct.TYPE_41__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mos_obj_refd(i32 %87)
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 5
  %91 = call i32 @bpobj_count_refd(i32* %90)
  %92 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mos_obj_refd(i32 %94)
  %96 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %96, i32 0, i32 5
  %98 = call i32 @bpobj_count_refd(i32* %97)
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 4
  %101 = call i32 @bpobj_count_refd(i32* %100)
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @mos_obj_refd(i32 %105)
  %107 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mos_obj_refd(i32 %110)
  %112 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @mos_obj_refd(i32 %115)
  %117 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mos_obj_refd(i32 %120)
  %122 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %1
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.TYPE_39__* @vdev_indirect_mapping_open(i32* %128, i32 %132)
  store %struct.TYPE_39__* %133, %struct.TYPE_39__** %6, align 8
  %134 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @mos_obj_refd(i32 %138)
  %140 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %141 = call i32 @vdev_indirect_mapping_close(%struct.TYPE_39__* %140)
  br label %142

142:                                              ; preds = %127, %1
  %143 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %144, align 8
  %146 = icmp ne %struct.TYPE_27__* %145, null
  br i1 %146, label %147, label %181

147:                                              ; preds = %142
  %148 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %149 = load i32, i32* @FTAG, align 4
  %150 = call i32 @dsl_pool_config_enter(%struct.TYPE_41__* %148, i32 %149)
  %151 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %152 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %153, align 8
  %155 = call %struct.TYPE_30__* @dsl_dataset_phys(%struct.TYPE_27__* %154)
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @FTAG, align 4
  %159 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_41__* %151, i32 %157, i32 %158, %struct.TYPE_27__** %7)
  %160 = call i32 @VERIFY0(i32 %159)
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %162 = call i32 @count_ds_mos_objects(%struct.TYPE_27__* %161)
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = call i32 @dump_deadlist(i32* %164)
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %167 = load i32, i32* @FTAG, align 4
  %168 = call i32 @dsl_dataset_rele(%struct.TYPE_27__* %166, i32 %167)
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %170 = load i32, i32* @FTAG, align 4
  %171 = call i32 @dsl_pool_config_exit(%struct.TYPE_41__* %169, i32 %170)
  %172 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** %173, align 8
  %175 = call i32 @count_ds_mos_objects(%struct.TYPE_27__* %174)
  %176 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = call i32 @dump_deadlist(i32* %179)
  br label %181

181:                                              ; preds = %147, %142
  %182 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @count_dir_mos_objects(i32* %184)
  %186 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %181
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i32 0, i32 1
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @count_dir_mos_objects(i32* %193)
  br label %195

195:                                              ; preds = %190, %181
  %196 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @count_dir_mos_objects(i32* %203)
  br label %205

205:                                              ; preds = %200, %195
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @mos_leak_vdev(i32 %208)
  store i64 0, i64* %8, align 8
  br label %210

210:                                              ; preds = %249, %205
  %211 = load i64, i64* %8, align 8
  %212 = load i64, i64* @DDT_CLASSES, align 8
  %213 = icmp slt i64 %211, %212
  br i1 %213, label %214, label %252

214:                                              ; preds = %210
  store i64 0, i64* %9, align 8
  br label %215

215:                                              ; preds = %245, %214
  %216 = load i64, i64* %9, align 8
  %217 = load i64, i64* @DDT_TYPES, align 8
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %215
  store i64 0, i64* %10, align 8
  br label %220

220:                                              ; preds = %241, %219
  %221 = load i64, i64* %10, align 8
  %222 = load i64, i64* @ZIO_CHECKSUM_FUNCTIONS, align 8
  %223 = icmp slt i64 %221, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %220
  %225 = load %struct.TYPE_40__*, %struct.TYPE_40__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %226, align 8
  %228 = load i64, i64* %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %227, i64 %228
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %229, align 8
  store %struct.TYPE_29__* %230, %struct.TYPE_29__** %11, align 8
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load i64, i64* %9, align 8
  %235 = getelementptr inbounds i32*, i32** %233, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @mos_obj_refd(i32 %239)
  br label %241

241:                                              ; preds = %224
  %242 = load i64, i64* %10, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %10, align 8
  br label %220

244:                                              ; preds = %220
  br label %245

245:                                              ; preds = %244
  %246 = load i64, i64* %9, align 8
  %247 = add nsw i64 %246, 1
  store i64 %247, i64* %9, align 8
  br label %215

248:                                              ; preds = %215
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %8, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %8, align 8
  br label %210

252:                                              ; preds = %210
  store i64 0, i64* %12, align 8
  br label %253

253:                                              ; preds = %298, %252
  %254 = load i32*, i32** %4, align 8
  %255 = load i32, i32* @B_FALSE, align 4
  %256 = call i64 @dmu_object_next(i32* %254, i64* %12, i32 %255, i32 0)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %299

258:                                              ; preds = %253
  %259 = load i32, i32* @mos_refd_objs, align 4
  %260 = load i64, i64* %12, align 8
  %261 = call i64 @range_tree_contains(i32 %259, i64 %260, i32 1)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i32, i32* @mos_refd_objs, align 4
  %265 = load i64, i64* %12, align 8
  %266 = call i32 @range_tree_remove(i32 %264, i64 %265, i32 1)
  br label %298

267:                                              ; preds = %258
  %268 = load i32*, i32** %4, align 8
  %269 = load i64, i64* %12, align 8
  %270 = call i32 @dmu_object_info(i32* %268, i64 %269, %struct.TYPE_28__* %13)
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @DMU_OT_NEWTYPE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %267
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @DMU_OT_BYTESWAP(i32 %278)
  store i64 %279, i64* %15, align 8
  %280 = load %struct.TYPE_32__*, %struct.TYPE_32__** @dmu_ot_byteswap, align 8
  %281 = load i64, i64* %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  store i8* %284, i8** %14, align 8
  br label %293

285:                                              ; preds = %267
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** @dmu_ot, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %14, align 8
  br label %293

293:                                              ; preds = %285, %276
  %294 = load i64, i64* %12, align 8
  %295 = trunc i64 %294 to i32
  %296 = load i8*, i8** %14, align 8
  %297 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %295, i8* %296)
  store i32 2, i32* %3, align 4
  br label %298

298:                                              ; preds = %293, %263
  br label %253

299:                                              ; preds = %253
  %300 = load i32, i32* @mos_refd_objs, align 4
  %301 = load i32, i32* @mos_leaks_cb, align 4
  %302 = call i32 @range_tree_walk(i32 %300, i32 %301, i32* null)
  %303 = load i32, i32* @mos_refd_objs, align 4
  %304 = call i32 @range_tree_is_empty(i32 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %299
  store i32 2, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %299
  %308 = load i32, i32* @mos_refd_objs, align 4
  %309 = call i32 @range_tree_vacate(i32 %308, i32* null, i32* null)
  %310 = load i32, i32* @mos_refd_objs, align 4
  %311 = call i32 @range_tree_destroy(i32 %310)
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @mos_obj_refd(i32) #1

declare dso_local i32 @bpobj_count_refd(i32*) #1

declare dso_local %struct.TYPE_39__* @vdev_indirect_mapping_open(i32*, i32) #1

declare dso_local i32 @vdev_indirect_mapping_close(%struct.TYPE_39__*) #1

declare dso_local i32 @dsl_pool_config_enter(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_41__*, i32, i32, %struct.TYPE_27__**) #1

declare dso_local %struct.TYPE_30__* @dsl_dataset_phys(%struct.TYPE_27__*) #1

declare dso_local i32 @count_ds_mos_objects(%struct.TYPE_27__*) #1

declare dso_local i32 @dump_deadlist(i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @dsl_pool_config_exit(%struct.TYPE_41__*, i32) #1

declare dso_local i32 @count_dir_mos_objects(i32*) #1

declare dso_local i32 @mos_leak_vdev(i32) #1

declare dso_local i64 @dmu_object_next(i32*, i64*, i32, i32) #1

declare dso_local i64 @range_tree_contains(i32, i64, i32) #1

declare dso_local i32 @range_tree_remove(i32, i64, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i64, %struct.TYPE_28__*) #1

declare dso_local i64 @DMU_OT_BYTESWAP(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i32 @range_tree_walk(i32, i32, i32*) #1

declare dso_local i32 @range_tree_is_empty(i32) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
