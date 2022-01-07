; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c":V:b:so:pu\00", align 1
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@g_zfs = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bad volume size '%s': %s\0A\00", align 1
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"bad volume block size '%s': %s\0A\00", align 1
@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"missing size argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"'-s' and '-b' can only be used when creating a volume\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"'-u' can only be used when creating a file system\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"missing %s argument\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_REFRESERVATION = common dso_local global i64 0, align 8
@ZFS_PROP_REFRESERVATION = common dso_local global i32 0, align 4
@ZFS_PROP_RESERVATION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"filesystem successfully created, but not mounted\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"filesystem successfully created, but not shared\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [1024 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  store i64 %24, i64* %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* @B_FALSE, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @B_FALSE, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* @B_FALSE, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* @B_FALSE, align 8
  store i64 %28, i64* %13, align 8
  store i32 1, i32* %14, align 4
  %29 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %30 = call i64 @nvlist_alloc(i32** %15, i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = call i32 (...) @nomem()
  br label %34

34:                                               ; preds = %32, %2
  br label %35

35:                                               ; preds = %111, %34
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %112

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %111 [
    i32 86, label %42
    i32 112, label %66
    i32 98, label %68
    i32 111, label %91
    i32 115, label %98
    i32 117, label %100
    i32 58, label %102
    i32 63, label %106
  ]

42:                                               ; preds = %40
  %43 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  store i64 %43, i64* %6, align 8
  %44 = load i32, i32* @g_zfs, align 4
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @zfs_nicestrtonum(i32 %44, i8* %45, i64* %16)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i8*, i8** @optarg, align 8
  %52 = load i32, i32* @g_zfs, align 4
  %53 = call i8* @libzfs_error_description(i32 %52)
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* %50, i8* %51, i8* %53)
  br label %320

55:                                               ; preds = %42
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %58 = call i32 @zfs_prop_to_name(i32 %57)
  %59 = load i64, i64* %16, align 8
  %60 = call i64 @nvlist_add_uint64(i32* %56, i32 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 (...) @nomem()
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %8, align 8
  br label %111

66:                                               ; preds = %40
  %67 = load i64, i64* @B_TRUE, align 8
  store i64 %67, i64* %12, align 8
  br label %111

68:                                               ; preds = %40
  %69 = load i64, i64* @B_TRUE, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i32, i32* @g_zfs, align 4
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @zfs_nicestrtonum(i32 %70, i8* %71, i64* %16)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load i32, i32* @stderr, align 4
  %76 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** @optarg, align 8
  %78 = load i32, i32* @g_zfs, align 4
  %79 = call i8* @libzfs_error_description(i32 %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* %76, i8* %77, i8* %79)
  br label %320

81:                                               ; preds = %68
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %84 = call i32 @zfs_prop_to_name(i32 %83)
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @nvlist_add_uint64(i32* %82, i32 %84, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = call i32 (...) @nomem()
  br label %90

90:                                               ; preds = %88, %81
  br label %111

91:                                               ; preds = %40
  %92 = load i32*, i32** %15, align 8
  %93 = load i8*, i8** @optarg, align 8
  %94 = call i32 @parseprop(i32* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %320

97:                                               ; preds = %91
  br label %111

98:                                               ; preds = %40
  %99 = load i64, i64* @B_TRUE, align 8
  store i64 %99, i64* %10, align 8
  br label %111

100:                                              ; preds = %40
  %101 = load i64, i64* @B_TRUE, align 8
  store i64 %101, i64* %13, align 8
  br label %111

102:                                              ; preds = %40
  %103 = load i32, i32* @stderr, align 4
  %104 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* %104)
  br label %330

106:                                              ; preds = %40
  %107 = load i32, i32* @stderr, align 4
  %108 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* @optopt, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* %108, i32 %109)
  br label %330

111:                                              ; preds = %40, %100, %98, %97, %90, %66, %64
  br label %35

112:                                              ; preds = %35
  %113 = load i64, i64* %11, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* %10, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115, %112
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* %124)
  br label %330

126:                                              ; preds = %118, %115
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* @stderr, align 4
  %135 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* %135)
  br label %330

137:                                              ; preds = %129, %126
  %138 = load i64, i64* @optind, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %4, align 4
  %143 = load i64, i64* @optind, align 8
  %144 = load i8**, i8*** %5, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 %143
  store i8** %145, i8*** %5, align 8
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i32, i32* @stderr, align 4
  %150 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %151 = load i64, i64* %6, align 8
  %152 = call i8* @zfs_type_to_name(i64 %151)
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* %150, i8* %152)
  br label %330

154:                                              ; preds = %137
  %155 = load i32, i32* %4, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* @stderr, align 4
  %159 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* %159)
  br label %330

161:                                              ; preds = %154
  %162 = load i64, i64* %6, align 8
  %163 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %247

165:                                              ; preds = %161
  %166 = load i64, i64* %10, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %247, label %168

168:                                              ; preds = %165
  store i32* null, i32** %18, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @strchr(i8* %171, i8 signext 47)
  store i8* %172, i8** %20, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i8*, i8** %20, align 8
  store i8 0, i8* %175, align 1
  br label %176

176:                                              ; preds = %174, %168
  %177 = load i32, i32* @g_zfs, align 4
  %178 = load i8**, i8*** %5, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32* @zpool_open(i32 %177, i8* %180)
  store i32* %181, i32** %17, align 8
  %182 = load i8*, i8** %20, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i8*, i8** %20, align 8
  store i8 47, i8* %185, align 1
  br label %186

186:                                              ; preds = %184, %176
  %187 = load i32*, i32** %17, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %320

190:                                              ; preds = %186
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %193 = call i64 @zpool_get_prop_int(i32* %191, i32 %192, i32* null)
  store i64 %193, i64* %19, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* @SPA_VERSION_REFRESERVATION, align 8
  %196 = icmp sge i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32, i32* @ZFS_PROP_REFRESERVATION, align 4
  store i32 %198, i32* %21, align 4
  br label %201

199:                                              ; preds = %190
  %200 = load i32, i32* @ZFS_PROP_RESERVATION, align 4
  store i32 %200, i32* %21, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %203 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @snprintf(i8* %202, i32 1024, i8* %203, i8* %206)
  %208 = load i32*, i32** %15, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %221

210:                                              ; preds = %201
  %211 = load i32, i32* @g_zfs, align 4
  %212 = load i64, i64* %6, align 8
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %17, align 8
  %215 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %216 = call i32* @zfs_valid_proplist(i32 %211, i64 %212, i32* %213, i32 0, i32* null, i32* %214, i8* %215)
  store i32* %216, i32** %18, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %210
  %219 = load i32*, i32** %17, align 8
  %220 = call i32 @zpool_close(i32* %219)
  br label %320

221:                                              ; preds = %210, %201
  %222 = load i32*, i32** %17, align 8
  %223 = call i32 @zpool_close(i32* %222)
  %224 = load i64, i64* %8, align 8
  %225 = load i32*, i32** %18, align 8
  %226 = call i64 @zvol_volsize_to_reservation(i64 %224, i32* %225)
  store i64 %226, i64* %8, align 8
  %227 = load i32*, i32** %18, align 8
  %228 = call i32 @nvlist_free(i32* %227)
  %229 = load i32*, i32** %15, align 8
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @zfs_prop_to_name(i32 %230)
  %232 = call i64 @nvlist_lookup_string(i32* %229, i32 %231, i8** %22)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %221
  %235 = load i32*, i32** %15, align 8
  %236 = load i32, i32* %21, align 4
  %237 = call i32 @zfs_prop_to_name(i32 %236)
  %238 = load i64, i64* %8, align 8
  %239 = call i64 @nvlist_add_uint64(i32* %235, i32 %237, i64 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %234
  %242 = load i32*, i32** %15, align 8
  %243 = call i32 @nvlist_free(i32* %242)
  %244 = call i32 (...) @nomem()
  br label %245

245:                                              ; preds = %241, %234
  br label %246

246:                                              ; preds = %245, %221
  br label %247

247:                                              ; preds = %246, %165, %161
  %248 = load i64, i64* %12, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %247
  %251 = load i8**, i8*** %5, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i64, i64* %6, align 8
  %255 = call i64 @zfs_name_valid(i8* %253, i64 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %275

257:                                              ; preds = %250
  %258 = load i32, i32* @g_zfs, align 4
  %259 = load i8**, i8*** %5, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i64, i64* %6, align 8
  %263 = call i64 @zfs_dataset_exists(i32 %258, i8* %261, i64 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %257
  store i32 0, i32* %14, align 4
  br label %320

266:                                              ; preds = %257
  %267 = load i32, i32* @g_zfs, align 4
  %268 = load i8**, i8*** %5, align 8
  %269 = getelementptr inbounds i8*, i8** %268, i64 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i64 @zfs_create_ancestors(i32 %267, i8* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  br label %320

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %250, %247
  %276 = load i32, i32* @g_zfs, align 4
  %277 = load i8**, i8*** %5, align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = load i32*, i32** %15, align 8
  %282 = call i64 @zfs_create(i32 %276, i8* %279, i64 %280, i32* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %275
  br label %320

285:                                              ; preds = %275
  %286 = load i32, i32* @g_zfs, align 4
  %287 = load i8**, i8*** %5, align 8
  %288 = getelementptr inbounds i8*, i8** %287, i64 0
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %291 = call i32* @zfs_open(i32 %286, i8* %289, i32 %290)
  store i32* %291, i32** %7, align 8
  %292 = icmp eq i32* %291, null
  br i1 %292, label %293, label %294

293:                                              ; preds = %285
  br label %320

294:                                              ; preds = %285
  store i32 0, i32* %14, align 4
  %295 = load i64, i64* %13, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %319, label %297

297:                                              ; preds = %294
  %298 = load i32*, i32** %7, align 8
  %299 = call i64 @should_auto_mount(i32* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %297
  %302 = load i32*, i32** %7, align 8
  %303 = call i64 @zfs_mount(i32* %302, i32* null, i32 0)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = load i32, i32* @stderr, align 4
  %307 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %308 = call i32 (i32, i8*, ...) @fprintf(i32 %306, i8* %307)
  store i32 1, i32* %14, align 4
  br label %318

309:                                              ; preds = %301
  %310 = load i32*, i32** %7, align 8
  %311 = call i64 @zfs_share(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load i32, i32* @stderr, align 4
  %315 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %316 = call i32 (i32, i8*, ...) @fprintf(i32 %314, i8* %315)
  store i32 1, i32* %14, align 4
  br label %317

317:                                              ; preds = %313, %309
  br label %318

318:                                              ; preds = %317, %305
  br label %319

319:                                              ; preds = %318, %297, %294
  br label %320

320:                                              ; preds = %319, %293, %284, %273, %265, %218, %189, %96, %74, %48
  %321 = load i32*, i32** %7, align 8
  %322 = icmp ne i32* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i32*, i32** %7, align 8
  %325 = call i32 @zfs_close(i32* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i32*, i32** %15, align 8
  %328 = call i32 @nvlist_free(i32* %327)
  %329 = load i32, i32* %14, align 4
  store i32 %329, i32* %3, align 4
  br label %335

330:                                              ; preds = %157, %148, %133, %122, %106, %102
  %331 = load i32*, i32** %15, align 8
  %332 = call i32 @nvlist_free(i32* %331)
  %333 = load i64, i64* @B_FALSE, align 8
  %334 = call i32 @usage(i64 %333)
  store i32 2, i32* %3, align 4
  br label %335

335:                                              ; preds = %330, %326
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @zfs_nicestrtonum(i32, i8*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @libzfs_error_description(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @parseprop(i32*, i8*) #1

declare dso_local i8* @zfs_type_to_name(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zpool_open(i32, i8*) #1

declare dso_local i64 @zpool_get_prop_int(i32*, i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @zfs_valid_proplist(i32, i64, i32*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i64 @zvol_volsize_to_reservation(i64, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i64 @zfs_name_valid(i8*, i64) #1

declare dso_local i64 @zfs_dataset_exists(i32, i8*, i64) #1

declare dso_local i64 @zfs_create_ancestors(i32, i8*) #1

declare dso_local i64 @zfs_create(i32, i8*, i64, i32*) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @should_auto_mount(i32*) #1

declare dso_local i64 @zfs_mount(i32*, i32*, i32) #1

declare dso_local i64 @zfs_share(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i32 @usage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
