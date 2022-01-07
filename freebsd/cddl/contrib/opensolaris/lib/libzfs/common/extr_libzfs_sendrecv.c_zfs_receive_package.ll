; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive_package.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.drr_begin, %struct.TYPE_12__ }
%struct.drr_begin = type { i64, i8*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8** }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot receive\00", align 1
@DRR_BEGIN = common dso_local global i64 0, align 8
@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@DMU_COMPOUNDSTREAM = common dso_local global i64 0, align 8
@EZFS_BADSTREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"not_recursive\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"cannot specify snapshot name for multi-snapshot stream\00", align 1
@DRR_END = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"incorrect header checksum\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"fss\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"couldn't allocate avl tree\00", align 1
@EZFS_NOMEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i8**, i32, i32*)* @zfs_receive_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_receive_package(i32* %0, i32 %1, i8* %2, %struct.TYPE_14__* %3, %struct.TYPE_15__* %4, i32* %5, i8** %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca [1024 x i8], align 16
  %28 = alloca %struct.TYPE_15__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.drr_begin*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %40 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %24, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %25, align 8
  %44 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %26, align 8
  %47 = load i32, i32* @B_FALSE, align 4
  store i32 %47, i32* %30, align 4
  %48 = load i32, i32* @B_FALSE, align 4
  store i32 %48, i32* %31, align 4
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @snprintf(i8* %49, i32 1024, i8* %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DRR_BEGIN, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @DMU_GET_STREAM_HDRTYPE(i32 %73)
  %75 = load i64, i64* @DMU_COMPOUNDSTREAM, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %9
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @recv_read_nvlist(i32* %84, i32 %85, i64 %88, i32** %19, i32 %91, i32* %92)
  store i32 %93, i32* %29, align 4
  %94 = load i32, i32* %29, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* @EZFS_BADSTREAM, align 4
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %100 = call i32 @zfs_error(i32* %97, i32 %98, i8* %99)
  store i32 %100, i32* %29, align 4
  br label %422

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101, %9
  %103 = load i32*, i32** %19, align 8
  %104 = call i64 @nvlist_lookup_boolean(i32* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i64, i64* @ENOENT, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %32, align 4
  %108 = load i32, i32* %32, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %102
  %111 = load i8*, i8** %12, align 8
  %112 = call i8* @strchr(i8* %111, i8 signext 64)
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* @TEXT_DOMAIN, align 4
  %117 = call i8* @dgettext(i32 %116, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %118 = call i32 @zfs_error_aux(i32* %115, i8* %117)
  %119 = load i32*, i32** %10, align 8
  %120 = load i32, i32* @EZFS_BADSTREAM, align 4
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %122 = call i32 @zfs_error(i32* %119, i32 %120, i8* %121)
  store i32 %122, i32* %29, align 4
  br label %422

123:                                              ; preds = %110, %102
  %124 = load i32*, i32** %10, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @recv_read(i32* %124, i32 %125, %struct.TYPE_15__* %28, i32 48, i32 %128, i32* null)
  store i32 %129, i32* %29, align 4
  %130 = icmp ne i32 0, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %422

132:                                              ; preds = %123
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %198

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @BSWAP_32(i64 %139)
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i64 %140, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @BSWAP_64(i8* %148)
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i8**, i8*** %153, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  store i8* %149, i8** %155, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  %162 = load i8*, i8** %161, align 8
  %163 = call i8* @BSWAP_64(i8* %162)
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 1
  store i8* %163, i8** %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 2
  %176 = load i8*, i8** %175, align 8
  %177 = call i8* @BSWAP_64(i8* %176)
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 2
  store i8* %177, i8** %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i8**, i8*** %187, align 8
  %189 = getelementptr inbounds i8*, i8** %188, i64 3
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @BSWAP_64(i8* %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i8**, i8*** %195, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 3
  store i8* %191, i8** %197, align 8
  br label %198

198:                                              ; preds = %137, %132
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @DRR_END, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* @EZFS_BADSTREAM, align 4
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %207 = call i32 @zfs_error(i32* %204, i32 %205, i8* %206)
  store i32 %207, i32* %29, align 4
  br label %422

208:                                              ; preds = %198
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32*, i32** %15, align 8
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %215 = load i8**, i8*** %214, align 8
  %216 = call i32 @ZIO_CHECKSUM_EQUAL(i8** %215, i32 %213)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %208
  %219 = load i32*, i32** %10, align 8
  %220 = load i32, i32* @TEXT_DOMAIN, align 4
  %221 = call i8* @dgettext(i32 %220, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %222 = call i32 @zfs_error_aux(i32* %219, i8* %221)
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* @EZFS_BADSTREAM, align 4
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %226 = call i32 @zfs_error(i32* %223, i32 %224, i8* %225)
  store i32 %226, i32* %29, align 4
  br label %422

227:                                              ; preds = %208
  %228 = load i32*, i32** %19, align 8
  %229 = call i32 @nvlist_lookup_string(i32* %228, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %21)
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %366

234:                                              ; preds = %227
  %235 = load i32*, i32** %19, align 8
  %236 = call i64 @nvlist_lookup_nvlist(i32* %235, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32** %33)
  %237 = icmp eq i64 0, %236
  %238 = zext i1 %237 to i32
  %239 = call i32 @VERIFY(i32 %238)
  %240 = load i32*, i32** %33, align 8
  %241 = call i32* @fsavl_create(i32* %240)
  store i32* %241, i32** %20, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %252

243:                                              ; preds = %234
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* @TEXT_DOMAIN, align 4
  %246 = call i8* @dgettext(i32 %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %247 = call i32 @zfs_error_aux(i32* %244, i8* %246)
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* @EZFS_NOMEM, align 4
  %250 = getelementptr inbounds [1024 x i8], [1024 x i8]* %27, i64 0, i64 0
  %251 = call i32 @zfs_error(i32* %248, i32 %249, i8* %250)
  store i32 %251, i32* %29, align 4
  br label %422

252:                                              ; preds = %234
  %253 = load i8*, i8** %21, align 8
  %254 = icmp ne i8* %253, null
  br i1 %254, label %255, label %365

255:                                              ; preds = %252
  %256 = load i32, i32* %32, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %365

258:                                              ; preds = %255
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = trunc i64 %41 to i32
  %261 = call i32 @strlcpy(i8* %43, i8* %259, i32 %260)
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 3
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %309

266:                                              ; preds = %258
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  store %struct.drr_begin* %269, %struct.drr_begin** %36, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %294

274:                                              ; preds = %266
  %275 = load %struct.drr_begin*, %struct.drr_begin** %36, align 8
  %276 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %275, i32 0, i32 1
  %277 = load i8*, i8** %276, align 8
  %278 = call i8* @strrchr(i8* %277, i8 signext 47)
  store i8* %278, i8** %23, align 8
  %279 = load i8*, i8** %23, align 8
  %280 = icmp eq i8* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %274
  %282 = trunc i64 %41 to i32
  %283 = call i32 @strlcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %282)
  store i32 0, i32* %37, align 4
  br label %293

284:                                              ; preds = %274
  %285 = load i8*, i8** %23, align 8
  %286 = load %struct.drr_begin*, %struct.drr_begin** %36, align 8
  %287 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %286, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = ptrtoint i8* %285 to i64
  %290 = ptrtoint i8* %288 to i64
  %291 = sub i64 %289, %290
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %37, align 4
  br label %293

293:                                              ; preds = %284, %281
  br label %299

294:                                              ; preds = %266
  %295 = load %struct.drr_begin*, %struct.drr_begin** %36, align 8
  %296 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @strcspn(i8* %297, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %298, i32* %37, align 4
  br label %299

299:                                              ; preds = %294, %293
  %300 = load %struct.drr_begin*, %struct.drr_begin** %36, align 8
  %301 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load i32, i32* %37, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %302, i64 %304
  %306 = trunc i64 %41 to i32
  %307 = call i32 @strlcat(i8* %43, i8* %305, i32 %306)
  %308 = call i8* @strchr(i8* %43, i8 signext 64)
  store i8 0, i8* %308, align 1
  br label %309

309:                                              ; preds = %299, %258
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %325, label %314

314:                                              ; preds = %309
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %321 = call i64 @nvlist_alloc(i32** %34, i32 %320, i32 0)
  %322 = icmp eq i64 0, %321
  %323 = zext i1 %322 to i32
  %324 = call i32 @VERIFY(i32 %323)
  br label %325

325:                                              ; preds = %319, %314, %309
  %326 = load i32*, i32** %10, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %328 = load i32*, i32** %19, align 8
  %329 = load i32*, i32** %20, align 8
  %330 = load i32*, i32** %34, align 8
  %331 = call i32 @recv_incremental_replication(i32* %326, i8* %43, %struct.TYPE_14__* %327, i32* %328, i32* %329, i32* %330)
  store i32 %331, i32* %31, align 4
  br label %332

332:                                              ; preds = %361, %325
  %333 = load i32*, i32** %34, align 8
  %334 = load i32*, i32** %35, align 8
  %335 = call i32* @nvlist_next_nvpair(i32* %333, i32* %334)
  store i32* %335, i32** %35, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %337, label %362

337:                                              ; preds = %332
  store i32* null, i32** %39, align 8
  %338 = load i32*, i32** %10, align 8
  %339 = load i32*, i32** %35, align 8
  %340 = call i32 @nvpair_name(i32* %339)
  %341 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %342 = call i32* @zfs_open(i32* %338, i32 %340, i32 %341)
  store i32* %342, i32** %38, align 8
  %343 = load i32*, i32** %38, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %361

345:                                              ; preds = %337
  %346 = load i32*, i32** %38, align 8
  %347 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %348 = call i32* @changelist_gather(i32* %346, i32 %347, i32 0, i32 0)
  store i32* %348, i32** %39, align 8
  %349 = load i32*, i32** %38, align 8
  %350 = call i32 @zfs_close(i32* %349)
  %351 = load i32*, i32** %39, align 8
  %352 = icmp ne i32* %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %345
  %354 = load i32*, i32** %39, align 8
  %355 = call i32 @changelist_prefix(i32* %354)
  %356 = load i32, i32* %31, align 4
  %357 = or i32 %356, %355
  store i32 %357, i32* %31, align 4
  %358 = load i32*, i32** %39, align 8
  %359 = call i32 @changelist_free(i32* %358)
  br label %360

360:                                              ; preds = %353, %345
  br label %361

361:                                              ; preds = %360, %337
  br label %332

362:                                              ; preds = %332
  %363 = load i32*, i32** %34, align 8
  %364 = call i32 @nvlist_free(i32* %363)
  br label %365

365:                                              ; preds = %362, %255, %252
  br label %366

366:                                              ; preds = %365, %227
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = trunc i64 %45 to i32
  %373 = call i32 @strlcpy(i8* %46, i8* %371, i32 %372)
  %374 = call i8* @strchr(i8* %46, i8 signext 64)
  store i8* %374, i8** %23, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %376, label %380

376:                                              ; preds = %366
  %377 = load i8*, i8** %23, align 8
  store i8 0, i8* %377, align 1
  %378 = load i8*, i8** %23, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  store i8* %379, i8** %22, align 8
  br label %380

380:                                              ; preds = %376, %366
  br label %381

381:                                              ; preds = %401, %380
  %382 = load i32*, i32** %10, align 8
  %383 = load i8*, i8** %12, align 8
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %385 = load i32, i32* %11, align 4
  %386 = load i32*, i32** %19, align 8
  %387 = load i32*, i32** %20, align 8
  %388 = load i8**, i8*** %16, align 8
  %389 = load i32, i32* %17, align 4
  %390 = load i32*, i32** %18, align 8
  %391 = load i8*, i8** %22, align 8
  %392 = call i32 @zfs_receive_impl(i32* %382, i8* %383, i32* null, %struct.TYPE_14__* %384, i32 %385, i8* %46, i32* %386, i32* %387, i8** %388, i32 %389, i32* %390, i8* %391)
  store i32 %392, i32* %29, align 4
  %393 = load i32, i32* %29, align 4
  %394 = load i32, i32* @ENODATA, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %381
  store i32 0, i32* %29, align 4
  br label %404

397:                                              ; preds = %381
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %30, align 4
  %400 = or i32 %399, %398
  store i32 %400, i32* %30, align 4
  br label %401

401:                                              ; preds = %397
  %402 = load i32, i32* %29, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %381, label %404

404:                                              ; preds = %401, %396
  %405 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %421

409:                                              ; preds = %404
  %410 = load i32, i32* %32, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %421

412:                                              ; preds = %409
  %413 = load i8*, i8** %21, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %415, label %421

415:                                              ; preds = %412
  %416 = load i32*, i32** %10, align 8
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %418 = load i32*, i32** %19, align 8
  %419 = load i32*, i32** %20, align 8
  %420 = call i32 @recv_incremental_replication(i32* %416, i8* %43, %struct.TYPE_14__* %417, i32* %418, i32* %419, i32* null)
  store i32 %420, i32* %31, align 4
  br label %421

421:                                              ; preds = %415, %412, %409, %404
  br label %422

422:                                              ; preds = %421, %243, %218, %203, %131, %114, %96
  %423 = load i32*, i32** %20, align 8
  %424 = call i32 @fsavl_destroy(i32* %423)
  %425 = load i32*, i32** %19, align 8
  %426 = call i32 @nvlist_free(i32* %425)
  %427 = load i32, i32* %31, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %422
  store i32 -2, i32* %29, align 4
  br label %430

430:                                              ; preds = %429, %422
  %431 = load i32, i32* %30, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %430
  store i32 -1, i32* %29, align 4
  br label %434

434:                                              ; preds = %433, %430
  %435 = load i32, i32* %29, align 4
  %436 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %436)
  ret i32 %435
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @DMU_GET_STREAM_HDRTYPE(i32) #2

declare dso_local i32 @recv_read_nvlist(i32*, i32, i64, i32**, i32, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_lookup_boolean(i32*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @recv_read(i32*, i32, %struct.TYPE_15__*, i32, i32, i32*) #2

declare dso_local i64 @BSWAP_32(i64) #2

declare dso_local i8* @BSWAP_64(i8*) #2

declare dso_local i32 @ZIO_CHECKSUM_EQUAL(i8**, i32) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32* @fsavl_create(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @recv_incremental_replication(i32*, i8*, %struct.TYPE_14__*, i32*, i32*, i32*) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i32* @zfs_open(i32*, i32, i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i32* @changelist_gather(i32*, i32, i32, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @changelist_free(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_receive_impl(i32*, i8*, i32*, %struct.TYPE_14__*, i32, i8*, i32*, i32*, i8**, i32, i32*, i8*) #2

declare dso_local i32 @fsavl_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
