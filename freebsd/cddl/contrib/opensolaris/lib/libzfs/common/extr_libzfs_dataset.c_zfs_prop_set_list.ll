; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_set_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_prop_set_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i32, i32* }
%struct.TYPE_17__ = type { i64, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cannot set property for '%s'\00", align 1
@ZFS_PROP_ZONED = common dso_local global i64 0, align 8
@ZFS_PROP_VOLSIZE = common dso_local global i64 0, align 8
@ZFS_PROP_CANMOUNT = common dso_local global i32 0, align 4
@ZFS_CANMOUNT_OFF = common dso_local global i64 0, align 8
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"property '%s' not supported on FreeBSD\00", align 1
@EZFS_PERM = common dso_local global i32 0, align 4
@ZFS_IOC_SET_PROP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_prop_set_list(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %23 = bitcast %struct.TYPE_17__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  store i32 -1, i32* %6, align 4
  store i32** null, i32*** %7, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* @TEXT_DOMAIN, align 4
  %29 = call i8* @dgettext(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @snprintf(i8* %27, i32 1024, i8* %29, i8* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = load i64, i64* @ZFS_PROP_ZONED, align 8
  %41 = call i32 @zfs_prop_get_int(%struct.TYPE_16__* %39, i64 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %47 = call i32* @zfs_valid_proplist(i32* %34, i32 %37, i32* %38, i32 %41, %struct.TYPE_16__* %42, i32 %45, i8* %46)
  store i32* %47, i32** %11, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %337

50:                                               ; preds = %2
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @nvlist_next_nvpair(i32* %51, i32* null)
  store i32* %52, i32** %14, align 8
  br label %53

53:                                               ; preds = %69, %50
  %54 = load i32*, i32** %14, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i32*, i32** %14, align 8
  %58 = call i8* @nvpair_name(i32* %57)
  %59 = call i64 @zfs_name_to_prop(i8* %58)
  %60 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @zfs_add_synthetic_resv(%struct.TYPE_16__* %63, i32* %64)
  store i32 %65, i32* %13, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %337

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** %11, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32* @nvlist_next_nvpair(i32* %70, i32* %71)
  store i32* %72, i32** %14, align 8
  br label %53

73:                                               ; preds = %53
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @zfs_fix_auto_resv(%struct.TYPE_16__* %77, i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %337

82:                                               ; preds = %76, %73
  store i32 0, i32* %12, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @nvlist_next_nvpair(i32* %83, i32* null)
  store i32* %84, i32** %15, align 8
  br label %85

85:                                               ; preds = %91, %82
  %86 = load i32*, i32** %15, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i32* @nvlist_next_nvpair(i32* %92, i32* %93)
  store i32* %94, i32** %15, align 8
  br label %85

95:                                               ; preds = %85
  %96 = load i32, i32* %12, align 4
  %97 = call i32** @calloc(i32 %96, i32 8)
  store i32** %97, i32*** %7, align 8
  %98 = icmp eq i32** %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %337

100:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = call i32* @nvlist_next_nvpair(i32* %101, i32* null)
  store i32* %102, i32** %16, align 8
  br label %103

103:                                              ; preds = %195, %100
  %104 = load i32*, i32** %16, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %199

106:                                              ; preds = %103
  %107 = load i32*, i32** %16, align 8
  %108 = call i8* @nvpair_name(i32* %107)
  %109 = call i64 @zfs_name_to_prop(i8* %108)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @ZFS_PROP_CANMOUNT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %128, label %119

119:                                              ; preds = %106
  %120 = load i32*, i32** %16, align 8
  %121 = call i64 @fnvpair_value_uint64(i32* %120)
  %122 = load i64, i64* @ZFS_CANMOUNT_OFF, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %126 = call i64 @zfs_is_mounted(%struct.TYPE_16__* %125, i32* null)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %124, %106
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = load i32, i32* %17, align 4
  %131 = call i32* @changelist_gather(%struct.TYPE_16__* %129, i32 %130, i32 0, i32 0)
  %132 = load i32**, i32*** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  store i32* %131, i32** %135, align 8
  %136 = load i32**, i32*** %7, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %337

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143, %124, %119
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %165

148:                                              ; preds = %144
  %149 = load i32**, i32*** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = call i64 @changelist_haszonedchild(i32* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %148
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* @TEXT_DOMAIN, align 4
  %159 = call i8* @dgettext(i32 %158, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %160 = call i32 @zfs_error_aux(i32* %157, i8* %159)
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* @EZFS_ZONED, align 4
  %163 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %164 = call i32 @zfs_error(i32* %161, i32 %162, i8* %163)
  store i32 %164, i32* %6, align 4
  br label %337

165:                                              ; preds = %148, %144
  %166 = load i32, i32* %17, align 4
  switch i32 %166, label %176 [
    i32 133, label %167
    i32 132, label %167
    i32 128, label %167
    i32 129, label %167
    i32 130, label %167
    i32 131, label %167
  ]

167:                                              ; preds = %165, %165, %165, %165, %165, %165
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %169 = load i32*, i32** %16, align 8
  %170 = call i8* @nvpair_name(i32* %169)
  %171 = call i32 @snprintf(i8* %168, i32 1024, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %170)
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* @EZFS_PERM, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %175 = call i32 @zfs_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %6, align 4
  br label %337

176:                                              ; preds = %165
  %177 = load i32**, i32*** %7, align 8
  %178 = load i32, i32* %8, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %192

183:                                              ; preds = %176
  %184 = load i32**, i32*** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @changelist_prefix(i32* %188)
  store i32 %189, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  br label %337

192:                                              ; preds = %183, %176
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %192
  %196 = load i32*, i32** %11, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = call i32* @nvlist_next_nvpair(i32* %196, i32* %197)
  store i32* %198, i32** %16, align 8
  br label %103

199:                                              ; preds = %103
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp eq i32 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strlcpy(i32 %206, i8* %209, i32 4)
  %211 = load i32*, i32** %10, align 8
  %212 = load i32*, i32** %11, align 8
  %213 = call i64 @zcmd_write_src_nvlist(i32* %211, %struct.TYPE_17__* %5, i32* %212)
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %6, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %199
  %217 = load i32*, i32** %10, align 8
  %218 = call i32 @zcmd_alloc_dst_nvlist(i32* %217, %struct.TYPE_17__* %5, i32 0)
  store i32 %218, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216, %199
  br label %337

221:                                              ; preds = %216
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* @ZFS_IOC_SET_PROP, align 4
  %224 = call i32 @zfs_ioctl(i32* %222, i32 %223, %struct.TYPE_17__* %5)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %301

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @B_FALSE, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %237

232:                                              ; preds = %227
  %233 = load i32*, i32** %10, align 8
  %234 = load i64, i64* @errno, align 8
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %236 = call i32 @zfs_standard_error(i32* %233, i64 %234, i8* %235)
  br label %337

237:                                              ; preds = %227
  store i32* null, i32** %18, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = call i64 @zcmd_read_dst_nvlist(i32* %238, %struct.TYPE_17__* %5, i32** %18)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %337

242:                                              ; preds = %237
  %243 = load i32*, i32** %18, align 8
  %244 = call i32* @nvlist_next_nvpair(i32* %243, i32* null)
  store i32* %244, i32** %19, align 8
  br label %245

245:                                              ; preds = %258, %242
  %246 = load i32*, i32** %19, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %262

248:                                              ; preds = %245
  %249 = load i32*, i32** %19, align 8
  %250 = call i8* @nvpair_name(i32* %249)
  %251 = call i64 @zfs_name_to_prop(i8* %250)
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %20, align 4
  %253 = load i32*, i32** %10, align 8
  %254 = load i32, i32* %20, align 4
  %255 = load i64, i64* @errno, align 8
  %256 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %257 = call i32 @zfs_setprop_error(i32* %253, i32 %254, i64 %255, i8* %256)
  br label %258

258:                                              ; preds = %248
  %259 = load i32*, i32** %18, align 8
  %260 = load i32*, i32** %19, align 8
  %261 = call i32* @nvlist_next_nvpair(i32* %259, i32* %260)
  store i32* %261, i32** %19, align 8
  br label %245

262:                                              ; preds = %245
  %263 = load i32*, i32** %18, align 8
  %264 = call i32 @nvlist_free(i32* %263)
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %300

267:                                              ; preds = %262
  %268 = load i64, i64* @errno, align 8
  %269 = load i64, i64* @ENOSPC, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %300

271:                                              ; preds = %267
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %273 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %274 = call i32 @zfs_prop_get_int(%struct.TYPE_16__* %272, i64 %273)
  store i32 %274, i32* %21, align 4
  %275 = load i32*, i32** %11, align 8
  %276 = call i32 @nvlist_free(i32* %275)
  store i32* null, i32** %11, align 8
  %277 = call i32 @zcmd_free_nvlists(%struct.TYPE_17__* %5)
  %278 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %279 = call i64 @nvlist_alloc(i32** %11, i32 %278, i32 0)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  br label %337

282:                                              ; preds = %271
  %283 = load i32*, i32** %11, align 8
  %284 = load i64, i64* @ZFS_PROP_VOLSIZE, align 8
  %285 = call i32 @zfs_prop_to_name(i64 %284)
  %286 = load i32, i32* %21, align 4
  %287 = call i64 @nvlist_add_uint64(i32* %283, i32 %285, i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %337

290:                                              ; preds = %282
  %291 = load i32*, i32** %10, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = call i64 @zcmd_write_src_nvlist(i32* %291, %struct.TYPE_17__* %5, i32* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %337

296:                                              ; preds = %290
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* @ZFS_IOC_SET_PROP, align 4
  %299 = call i32 @zfs_ioctl(i32* %297, i32 %298, %struct.TYPE_17__* %5)
  br label %300

300:                                              ; preds = %296, %267, %262
  br label %336

301:                                              ; preds = %221
  store i32 0, i32* %8, align 4
  br label %302

302:                                              ; preds = %326, %301
  %303 = load i32, i32* %8, align 4
  %304 = load i32, i32* %12, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %329

306:                                              ; preds = %302
  %307 = load i32**, i32*** %7, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %325

313:                                              ; preds = %306
  %314 = load i32**, i32*** %7, align 8
  %315 = load i32, i32* %8, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @changelist_postfix(i32* %318)
  store i32 %319, i32* %22, align 4
  %320 = load i32, i32* %22, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %313
  %323 = load i32, i32* %22, align 4
  store i32 %323, i32* %6, align 4
  br label %324

324:                                              ; preds = %322, %313
  br label %325

325:                                              ; preds = %324, %306
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %8, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %8, align 4
  br label %302

329:                                              ; preds = %302
  %330 = load i32, i32* %6, align 4
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %335

332:                                              ; preds = %329
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %334 = call i32 @get_stats(%struct.TYPE_16__* %333)
  br label %335

335:                                              ; preds = %332, %329
  br label %336

336:                                              ; preds = %335, %300
  br label %337

337:                                              ; preds = %336, %295, %289, %281, %241, %232, %220, %191, %167, %156, %142, %99, %81, %67, %49
  %338 = load i32*, i32** %11, align 8
  %339 = call i32 @nvlist_free(i32* %338)
  %340 = call i32 @zcmd_free_nvlists(%struct.TYPE_17__* %5)
  %341 = load i32**, i32*** %7, align 8
  %342 = icmp ne i32** %341, null
  br i1 %342, label %343, label %369

343:                                              ; preds = %337
  store i32 0, i32* %8, align 4
  br label %344

344:                                              ; preds = %363, %343
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* %12, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %366

348:                                              ; preds = %344
  %349 = load i32**, i32*** %7, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32*, i32** %349, i64 %351
  %353 = load i32*, i32** %352, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %362

355:                                              ; preds = %348
  %356 = load i32**, i32*** %7, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32*, i32** %356, i64 %358
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @changelist_free(i32* %360)
  br label %362

362:                                              ; preds = %355, %348
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %8, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %8, align 4
  br label %344

366:                                              ; preds = %344
  %367 = load i32**, i32*** %7, align 8
  %368 = call i32 @free(i32** %367)
  br label %369

369:                                              ; preds = %366, %337
  %370 = load i32, i32* %6, align 4
  ret i32 %370
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32* @zfs_valid_proplist(i32*, i32, i32*, i32, %struct.TYPE_16__*, i32, i8*) #2

declare dso_local i32 @zfs_prop_get_int(%struct.TYPE_16__*, i64) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i64 @zfs_name_to_prop(i8*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i32 @zfs_add_synthetic_resv(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @zfs_fix_auto_resv(%struct.TYPE_16__*, i32*) #2

declare dso_local i32** @calloc(i32, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @fnvpair_value_uint64(i32*) #2

declare dso_local i64 @zfs_is_mounted(%struct.TYPE_16__*, i32*) #2

declare dso_local i32* @changelist_gather(%struct.TYPE_16__*, i32, i32, i32) #2

declare dso_local i64 @changelist_haszonedchild(i32*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_17__*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #2

declare dso_local i64 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_17__*, i32**) #2

declare dso_local i32 @zfs_setprop_error(i32*, i32, i64, i8*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_17__*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #2

declare dso_local i32 @zfs_prop_to_name(i64) #2

declare dso_local i32 @changelist_postfix(i32*) #2

declare dso_local i32 @get_stats(%struct.TYPE_16__*) #2

declare dso_local i32 @changelist_free(i32*) #2

declare dso_local i32 @free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
