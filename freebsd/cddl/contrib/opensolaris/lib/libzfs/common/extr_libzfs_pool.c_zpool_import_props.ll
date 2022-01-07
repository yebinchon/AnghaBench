; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_import_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_import_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot import pool '%s'\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cannot import '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZFS_IOC_POOL_IMPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ZPOOL_TRY_REWIND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot import '%s' as '%s'\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_UNSUP_FEAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"This pool uses the following feature(s) not supported by this system:\0A\00", align 1
@ZPOOL_CONFIG_CAN_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [118 x i8] c"All unsupported features are only required for writing to the pool.\0AThe pool can be imported using '-o readonly=on'.\0A\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@EZFS_INVALCONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"one or more devices is read only\00", align 1
@EZFS_BADDEV = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_MISSING_DEVICES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [81 x i8] c"The devices below are missing or corrupted, use '-m' to import the pool anyway:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"new name of at least one dataset is longer than the maximum allowable length\00", align 1
@EZFS_NAMETOOLONG = common dso_local global i32 0, align 4
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_import_props(i32* %0, i32* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1024 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_15__, align 4
  %24 = alloca [1024 x i8], align 16
  %25 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = bitcast %struct.TYPE_14__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 20, i1 false)
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %29 = call i64 @nvlist_lookup_string(i32* %27, i32 %28, i8** %18)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @verify(i32 %31)
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %34 = load i32, i32* @TEXT_DOMAIN, align 4
  %35 = call i8* @dgettext(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %18, align 8
  %37 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %33, i32 1024, i8* %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %5
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @B_FALSE, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @zpool_name_valid(i32* %41, i32 %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %49 = load i32, i32* @TEXT_DOMAIN, align 4
  %50 = call i8* @dgettext(i32 %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @zfs_error_fmt(i32* %47, i32 %48, i8* %50, i8* %51)
  store i32 %52, i32* %6, align 4
  br label %344

53:                                               ; preds = %40
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %17, align 8
  br label %57

55:                                               ; preds = %5
  %56 = load i8*, i8** %18, align 8
  store i8* %56, i8** %17, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %92

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %62 = load i32, i32* @B_TRUE, align 4
  store i32 %62, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %64 = load i32, i32* @B_FALSE, align 4
  store i32 %64, i32* %63, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %67 = call i64 @nvlist_lookup_uint64(i32* %65, i32 %66, i32* %22)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @verify(i32 %69)
  %71 = load i32*, i32** %7, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %22, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %21, i64 0, i64 0
  %76 = bitcast %struct.TYPE_15__* %23 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i32* @zpool_valid_proplist(i32* %71, i8* %72, i32* %73, i32 %74, i64 %77, i8* %75)
  store i32* %78, i32** %10, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %344

81:                                               ; preds = %60
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i64 @zcmd_write_src_nvlist(i32* %82, %struct.TYPE_14__* %12, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @nvlist_free(i32* %87)
  store i32 -1, i32* %6, align 4
  br label %344

89:                                               ; preds = %81
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @nvlist_free(i32* %90)
  br label %92

92:                                               ; preds = %89, %57
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @strlcpy(i32 %94, i8* %95, i32 4)
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %100 = call i64 @nvlist_lookup_uint64(i32* %97, i32 %98, i32* %99)
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @verify(i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i64 @zcmd_write_conf_nvlist(i32* %104, %struct.TYPE_14__* %12, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %344

110:                                              ; preds = %92
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 2
  %115 = call i64 @zcmd_alloc_dst_nvlist(i32* %111, %struct.TYPE_14__* %12, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %344

119:                                              ; preds = %110
  %120 = load i32, i32* %11, align 4
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %139, %119
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* @ZFS_IOC_POOL_IMPORT, align 4
  %125 = call i32 @zfs_ioctl(i32* %123, i32 %124, %struct.TYPE_14__* %12)
  store i32 %125, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @errno, align 4
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = icmp eq i32 %128, %129
  br label %131

131:                                              ; preds = %127, %122
  %132 = phi i1 [ false, %122 ], [ %130, %127 ]
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = load i32*, i32** %7, align 8
  %135 = call i64 @zcmd_expand_dst_nvlist(i32* %134, %struct.TYPE_14__* %12)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  store i32 -1, i32* %6, align 4
  br label %344

139:                                              ; preds = %133
  br label %122

140:                                              ; preds = %131
  %141 = load i32, i32* %19, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @errno, align 4
  store i32 %144, i32* %20, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @zcmd_read_dst_nvlist(i32* %146, %struct.TYPE_14__* %12, i32** %14)
  %148 = call i32 @zcmd_free_nvlists(%struct.TYPE_14__* %12)
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @zpool_get_load_policy(i32* %149, %struct.TYPE_13__* %13)
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %300

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %153
  %160 = load i32*, i32** %7, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i8*, i8** %18, align 8
  br label %167

165:                                              ; preds = %159
  %166 = load i8*, i8** %17, align 8
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i8* [ %164, %163 ], [ %166, %165 ]
  %169 = load i32, i32* @B_TRUE, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = call i32 @zpool_rewind_exclaim(i32* %160, i8* %168, i32 %169, i32* %170)
  %172 = load i32*, i32** %14, align 8
  %173 = call i32 @nvlist_free(i32* %172)
  store i32 -1, i32* %6, align 4
  br label %344

174:                                              ; preds = %153
  %175 = load i8*, i8** %9, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %179 = load i32, i32* @TEXT_DOMAIN, align 4
  %180 = call i8* @dgettext(i32 %179, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %181 = load i8*, i8** %17, align 8
  %182 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %178, i32 1024, i8* %180, i8* %181)
  br label %190

183:                                              ; preds = %174
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %185 = load i32, i32* @TEXT_DOMAIN, align 4
  %186 = call i8* @dgettext(i32 %185, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %187 = load i8*, i8** %18, align 8
  %188 = load i8*, i8** %17, align 8
  %189 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %184, i32 1024, i8* %186, i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %183, %177
  %191 = load i32, i32* %20, align 4
  switch i32 %191, label %279 [
    i32 130, label %192
    i32 132, label %225
    i32 128, label %230
    i32 129, label %239
    i32 133, label %265
    i32 131, label %270
  ]

192:                                              ; preds = %190
  %193 = load i32*, i32** %14, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %220

195:                                              ; preds = %192
  %196 = load i32*, i32** %14, align 8
  %197 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %198 = call i32 @nvlist_lookup_nvlist(i32* %196, i32 %197, i32** %15)
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %220

200:                                              ; preds = %195
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* @ZPOOL_CONFIG_UNSUP_FEAT, align 4
  %203 = call i32 @nvlist_exists(i32* %201, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load i32, i32* @TEXT_DOMAIN, align 4
  %207 = call i8* @dgettext(i32 %206, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %208 = call i32 @printf(i8* %207)
  %209 = load i32*, i32** %14, align 8
  %210 = call i32 @zpool_print_unsup_feat(i32* %209)
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* @ZPOOL_CONFIG_CAN_RDONLY, align 4
  %213 = call i32 @nvlist_exists(i32* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load i32, i32* @TEXT_DOMAIN, align 4
  %217 = call i8* @dgettext(i32 %216, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.4, i64 0, i64 0))
  %218 = call i32 @printf(i8* %217)
  br label %219

219:                                              ; preds = %215, %205
  br label %220

220:                                              ; preds = %219, %200, %195, %192
  %221 = load i32*, i32** %7, align 8
  %222 = load i32, i32* @EZFS_BADVERSION, align 4
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %224 = call i32 @zfs_error(i32* %221, i32 %222, i8* %223)
  br label %297

225:                                              ; preds = %190
  %226 = load i32*, i32** %7, align 8
  %227 = load i32, i32* @EZFS_INVALCONFIG, align 4
  %228 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %229 = call i32 @zfs_error(i32* %226, i32 %227, i8* %228)
  br label %297

230:                                              ; preds = %190
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* @TEXT_DOMAIN, align 4
  %233 = call i8* @dgettext(i32 %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %234 = call i32 @zfs_error_aux(i32* %231, i8* %233)
  %235 = load i32*, i32** %7, align 8
  %236 = load i32, i32* @EZFS_BADDEV, align 4
  %237 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %238 = call i32 @zfs_error(i32* %235, i32 %236, i8* %237)
  br label %297

239:                                              ; preds = %190
  %240 = load i32*, i32** %14, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %260

242:                                              ; preds = %239
  %243 = load i32*, i32** %14, align 8
  %244 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %245 = call i32 @nvlist_lookup_nvlist(i32* %243, i32 %244, i32** %15)
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %260

247:                                              ; preds = %242
  %248 = load i32*, i32** %15, align 8
  %249 = load i32, i32* @ZPOOL_CONFIG_MISSING_DEVICES, align 4
  %250 = call i32 @nvlist_lookup_nvlist(i32* %248, i32 %249, i32** %16)
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %247
  %253 = load i32, i32* @TEXT_DOMAIN, align 4
  %254 = call i8* @dgettext(i32 %253, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %255 = call i32 @printf(i8* %254)
  %256 = load i32*, i32** %7, align 8
  %257 = load i32*, i32** %16, align 8
  %258 = call i32 @print_vdev_tree(i32* %256, i32* null, i32* %257, i32 2)
  %259 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %260

260:                                              ; preds = %252, %247, %242, %239
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* %20, align 4
  %263 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %264 = call i32 @zpool_standard_error(i32* %261, i32 %262, i8* %263)
  br label %297

265:                                              ; preds = %190
  %266 = load i32*, i32** %7, align 8
  %267 = load i32, i32* %20, align 4
  %268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %269 = call i32 @zpool_standard_error(i32* %266, i32 %267, i8* %268)
  br label %297

270:                                              ; preds = %190
  %271 = load i32*, i32** %7, align 8
  %272 = load i32, i32* @TEXT_DOMAIN, align 4
  %273 = call i8* @dgettext(i32 %272, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.8, i64 0, i64 0))
  %274 = call i32 @zfs_error_aux(i32* %271, i8* %273)
  %275 = load i32*, i32** %7, align 8
  %276 = load i32, i32* @EZFS_NAMETOOLONG, align 4
  %277 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %278 = call i32 @zfs_error(i32* %275, i32 %276, i8* %277)
  br label %297

279:                                              ; preds = %190
  %280 = load i32*, i32** %7, align 8
  %281 = load i32, i32* %20, align 4
  %282 = getelementptr inbounds [1024 x i8], [1024 x i8]* %24, i64 0, i64 0
  %283 = call i32 @zpool_standard_error(i32* %280, i32 %281, i8* %282)
  %284 = load i32*, i32** %7, align 8
  %285 = load i8*, i8** %9, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %279
  %288 = load i8*, i8** %18, align 8
  br label %291

289:                                              ; preds = %279
  %290 = load i8*, i8** %17, align 8
  br label %291

291:                                              ; preds = %289, %287
  %292 = phi i8* [ %288, %287 ], [ %290, %289 ]
  %293 = load i32, i32* %20, align 4
  %294 = sub nsw i32 0, %293
  %295 = load i32*, i32** %14, align 8
  %296 = call i32 @zpool_explain_recover(i32* %284, i8* %292, i32 %294, i32* %295)
  br label %297

297:                                              ; preds = %291, %270, %265, %260, %230, %225, %220
  %298 = load i32*, i32** %14, align 8
  %299 = call i32 @nvlist_free(i32* %298)
  store i32 -1, i32* %19, align 4
  br label %342

300:                                              ; preds = %145
  %301 = load i32*, i32** %7, align 8
  %302 = load i8*, i8** %17, align 8
  %303 = call i64 @zpool_open_silent(i32* %301, i8* %302, i32** %25)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  store i32 -1, i32* %19, align 4
  br label %313

306:                                              ; preds = %300
  %307 = load i32*, i32** %25, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32*, i32** %25, align 8
  %311 = call i32 @zpool_close(i32* %310)
  br label %312

312:                                              ; preds = %309, %306
  br label %313

313:                                              ; preds = %312, %305
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %317 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %318 = or i32 %316, %317
  %319 = and i32 %315, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %339

321:                                              ; preds = %313
  %322 = load i32*, i32** %7, align 8
  %323 = load i8*, i8** %9, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %327

325:                                              ; preds = %321
  %326 = load i8*, i8** %18, align 8
  br label %329

327:                                              ; preds = %321
  %328 = load i8*, i8** %17, align 8
  br label %329

329:                                              ; preds = %327, %325
  %330 = phi i8* [ %326, %325 ], [ %328, %327 ]
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @ZPOOL_TRY_REWIND, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  %336 = zext i1 %335 to i32
  %337 = load i32*, i32** %14, align 8
  %338 = call i32 @zpool_rewind_exclaim(i32* %322, i8* %330, i32 %336, i32* %337)
  br label %339

339:                                              ; preds = %329, %313
  %340 = load i32*, i32** %14, align 8
  %341 = call i32 @nvlist_free(i32* %340)
  store i32 0, i32* %6, align 4
  br label %344

342:                                              ; preds = %297
  %343 = load i32, i32* %19, align 4
  store i32 %343, i32* %6, align 4
  br label %344

344:                                              ; preds = %342, %339, %167, %137, %117, %108, %86, %80, %46
  %345 = load i32, i32* %6, align 4
  ret i32 %345
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zpool_name_valid(i32*, i32, i8*) #2

declare dso_local i32 @zfs_error_fmt(i32*, i32, i8*, i8*) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32* @zpool_valid_proplist(i32*, i8*, i32*, i32, i64, i8*) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_write_conf_nvlist(i32*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_14__*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_14__*) #2

declare dso_local i64 @zcmd_expand_dst_nvlist(i32*, %struct.TYPE_14__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_14__*, i32**) #2

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @zpool_rewind_exclaim(i32*, i8*, i32, i32*) #2

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @nvlist_exists(i32*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @zpool_print_unsup_feat(i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @print_vdev_tree(i32*, i32*, i32*, i32) #2

declare dso_local i32 @zpool_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @zpool_explain_recover(i32*, i8*, i32, i32*) #2

declare dso_local i64 @zpool_open_silent(i32*, i8*, i32**) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
