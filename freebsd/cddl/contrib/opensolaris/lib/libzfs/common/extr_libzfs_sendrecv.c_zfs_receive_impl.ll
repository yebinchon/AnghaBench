; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_receive_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.drr_begin }
%struct.drr_begin = type { i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_18__ = type { i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot receive\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"specified fs (%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"specified origin fs (%s) does not exist\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@DRR_END = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@DRR_BEGIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid stream (bad magic number)\00", align 1
@EZFS_BADSTREAM = common dso_local global i32 0, align 4
@DMU_SUBSTREAM = common dso_local global i32 0, align 4
@DMU_COMPOUNDSTREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"stream has unsupported feature, feature flags = %lx\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid stream (bad snapshot name)\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_19__*, i32, i8*, i32*, i32*, i8**, i32, i32*, i8*)* @zfs_receive_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_receive_impl(i32* %0, i8* %1, i8* %2, %struct.TYPE_19__* %3, i32 %4, i8* %5, i32* %6, i32* %7, i8** %8, i32 %9, i32* %10, i8* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_20__, align 8
  %28 = alloca %struct.TYPE_20__, align 8
  %29 = alloca %struct.drr_begin*, align 8
  %30 = alloca [1024 x i8], align 16
  %31 = alloca %struct.TYPE_18__, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i8* %2, i8** %16, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %17, align 8
  store i32 %4, i32* %18, align 4
  store i8* %5, i8** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i8** %8, i8*** %22, align 8
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i8* %11, i8** %25, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  store %struct.drr_begin* %38, %struct.drr_begin** %29, align 8
  %39 = bitcast %struct.TYPE_18__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 4, i1 false)
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %41 = load i32, i32* @TEXT_DOMAIN, align 4
  %42 = call i8* @dgettext(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @snprintf(i8* %40, i32 1024, i8* %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %12
  %49 = load i32*, i32** %14, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %52 = call i32 @zfs_dataset_exists(i32* %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* @TEXT_DOMAIN, align 4
  %57 = call i8* @dgettext(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %15, align 8
  %59 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %55, i8* %57, i8* %58)
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @EZFS_NOENT, align 4
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %63 = call i32 @zfs_error(i32* %60, i32 %61, i8* %62)
  store i32 %63, i32* %13, align 4
  br label %299

64:                                               ; preds = %48, %12
  %65 = load i8*, i8** %16, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32*, i32** %14, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %71 = call i32 @zfs_dataset_exists(i32* %68, i8* %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %67
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* @TEXT_DOMAIN, align 4
  %76 = call i8* @dgettext(i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %74, i8* %76, i8* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* @EZFS_NOENT, align 4
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %82 = call i32 @zfs_error(i32* %79, i32 %80, i8* %81)
  store i32 %82, i32* %13, align 4
  br label %299

83:                                               ; preds = %67, %64
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @B_FALSE, align 4
  %87 = call i32 @recv_read(i32* %84, i32 %85, %struct.TYPE_20__* %27, i32 80, i32 %86, %struct.TYPE_18__* %31)
  store i32 %87, i32* %26, align 4
  %88 = icmp ne i32 0, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %26, align 4
  store i32 %90, i32* %13, align 4
  br label %299

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DRR_END, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DRR_END, align 8
  %100 = call i64 @BSWAP_32(i64 %99)
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96, %91
  %103 = load i32, i32* @ENODATA, align 4
  store i32 %103, i32* %13, align 4
  br label %299

104:                                              ; preds = %96
  %105 = bitcast %struct.TYPE_20__* %28 to i8*
  %106 = bitcast %struct.TYPE_20__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 80, i1 false)
  %107 = load i32, i32* @B_FALSE, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %111 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %114 = call i64 @BSWAP_64(i64 %113)
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %172

116:                                              ; preds = %104
  %117 = call i32 @bzero(%struct.TYPE_18__* %31, i32 4)
  %118 = call i32 @fletcher_4_incremental_byteswap(%struct.TYPE_20__* %27, i32 80, %struct.TYPE_18__* %31)
  %119 = load i32, i32* @B_TRUE, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @BSWAP_32(i64 %123)
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @BSWAP_32(i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  store i64 %128, i64* %129, align 8
  %130 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %131 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @BSWAP_64(i64 %132)
  %134 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %135 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %137 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @BSWAP_64(i64 %138)
  %140 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %141 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %143 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @BSWAP_64(i64 %144)
  %146 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %147 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %149 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @BSWAP_32(i64 %150)
  %152 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %153 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %155 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = call i64 @BSWAP_32(i64 %156)
  %158 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %159 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %158, i32 0, i32 4
  store i64 %157, i64* %159, align 8
  %160 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %161 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @BSWAP_64(i64 %162)
  %164 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %165 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %164, i32 0, i32 5
  store i64 %163, i64* %165, align 8
  %166 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %167 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = call i64 @BSWAP_64(i64 %168)
  %170 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %171 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %170, i32 0, i32 6
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %116, %104
  %173 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %174 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %183, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @DRR_BEGIN, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %178, %172
  %184 = load i32*, i32** %14, align 8
  %185 = load i32, i32* @TEXT_DOMAIN, align 4
  %186 = call i8* @dgettext(i32 %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %187 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %184, i8* %186)
  %188 = load i32*, i32** %14, align 8
  %189 = load i32, i32* @EZFS_BADSTREAM, align 4
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %191 = call i32 @zfs_error(i32* %188, i32 %189, i8* %190)
  store i32 %191, i32* %13, align 4
  br label %299

192:                                              ; preds = %178
  %193 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %194 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @DMU_GET_FEATUREFLAGS(i64 %195)
  store i32 %196, i32* %32, align 4
  %197 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %198 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %199)
  store i32 %200, i32* %33, align 4
  %201 = load i32, i32* %32, align 4
  %202 = call i32 @DMU_STREAM_SUPPORTED(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %192
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* @DMU_SUBSTREAM, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %204
  %209 = load i32, i32* %33, align 4
  %210 = load i32, i32* @DMU_COMPOUNDSTREAM, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %208, %192
  %213 = load i32*, i32** %14, align 8
  %214 = load i32, i32* @TEXT_DOMAIN, align 4
  %215 = call i8* @dgettext(i32 %214, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %216 = load i32, i32* %32, align 4
  %217 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %213, i8* %215, i32 %216)
  %218 = load i32*, i32** %14, align 8
  %219 = load i32, i32* @EZFS_BADSTREAM, align 4
  %220 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %221 = call i32 @zfs_error(i32* %218, i32 %219, i8* %220)
  store i32 %221, i32* %13, align 4
  br label %299

222:                                              ; preds = %208, %204
  %223 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %224 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %223, i32 0, i32 7
  %225 = load i8*, i8** %224, align 8
  %226 = call i8* @strchr(i8* %225, i8 signext 64)
  %227 = icmp eq i8* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %222
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* @TEXT_DOMAIN, align 4
  %231 = call i8* @dgettext(i32 %230, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %232 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %229, i8* %231)
  %233 = load i32*, i32** %14, align 8
  %234 = load i32, i32* @EZFS_BADSTREAM, align 4
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %236 = call i32 @zfs_error(i32* %233, i32 %234, i8* %235)
  store i32 %236, i32* %13, align 4
  br label %299

237:                                              ; preds = %222
  %238 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %239 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %240)
  %242 = load i32, i32* @DMU_SUBSTREAM, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %282

244:                                              ; preds = %237
  %245 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %246 = zext i32 %245 to i64
  %247 = call i8* @llvm.stacksave()
  store i8* %247, i8** %34, align 8
  %248 = alloca i8, i64 %246, align 16
  store i64 %246, i64* %35, align 8
  %249 = load i8*, i8** %19, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %251, label %267

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %253, i32 0, i32 7
  %255 = load i8*, i8** %254, align 8
  %256 = trunc i64 %246 to i32
  %257 = call i32 @strlcpy(i8* %248, i8* %255, i32 %256)
  %258 = call i8* @strchr(i8* %248, i8 signext 64)
  store i8* %258, i8** %36, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %251
  %261 = load i8*, i8** %36, align 8
  store i8 0, i8* %261, align 1
  br label %262

262:                                              ; preds = %260, %251
  store i8* %248, i8** %19, align 8
  %263 = load i8*, i8** %25, align 8
  %264 = icmp eq i8* %263, null
  %265 = zext i1 %264 to i32
  %266 = call i32 @VERIFY(i32 %265)
  br label %267

267:                                              ; preds = %262, %244
  %268 = load i32*, i32** %14, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load i8*, i8** %15, align 8
  %271 = load i8*, i8** %16, align 8
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %273 = load i8*, i8** %19, align 8
  %274 = load i32*, i32** %20, align 8
  %275 = load i32*, i32** %21, align 8
  %276 = load i8**, i8*** %22, align 8
  %277 = load i32, i32* %23, align 4
  %278 = load i32*, i32** %24, align 8
  %279 = load i8*, i8** %25, align 8
  %280 = call i32 @zfs_receive_one(i32* %268, i32 %269, i8* %270, i8* %271, %struct.TYPE_19__* %272, %struct.TYPE_20__* %27, %struct.TYPE_20__* %28, i8* %273, i32* %274, i32* %275, i8** %276, i32 %277, i32* %278, i8* %279)
  store i32 %280, i32* %13, align 4
  %281 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %281)
  br label %299

282:                                              ; preds = %237
  %283 = load %struct.drr_begin*, %struct.drr_begin** %29, align 8
  %284 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %285)
  %287 = load i32, i32* @DMU_COMPOUNDSTREAM, align 4
  %288 = icmp eq i32 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @assert(i32 %289)
  %291 = load i32*, i32** %14, align 8
  %292 = load i32, i32* %18, align 4
  %293 = load i8*, i8** %15, align 8
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %295 = load i8**, i8*** %22, align 8
  %296 = load i32, i32* %23, align 4
  %297 = load i32*, i32** %24, align 8
  %298 = call i32 @zfs_receive_package(i32* %291, i32 %292, i8* %293, %struct.TYPE_19__* %294, %struct.TYPE_20__* %27, %struct.TYPE_18__* %31, i8** %295, i32 %296, i32* %297)
  store i32 %298, i32* %13, align 4
  br label %299

299:                                              ; preds = %282, %267, %228, %212, %183, %102, %89, %73, %54
  %300 = load i32, i32* %13, align 4
  ret i32 %300
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_dataset_exists(i32*, i8*, i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @recv_read(i32*, i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_18__*) #2

declare dso_local i64 @BSWAP_32(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @BSWAP_64(i64) #2

declare dso_local i32 @bzero(%struct.TYPE_18__*, i32) #2

declare dso_local i32 @fletcher_4_incremental_byteswap(%struct.TYPE_20__*, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i64) #2

declare dso_local i32 @DMU_GET_STREAM_HDRTYPE(i64) #2

declare dso_local i32 @DMU_STREAM_SUPPORTED(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @zfs_receive_one(i32*, i32, i8*, i8*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i8*, i32*, i32*, i8**, i32, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zfs_receive_package(i32*, i32, i8*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i8**, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
