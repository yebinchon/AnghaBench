; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_zfs_send_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, %struct.TYPE_8__*, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot resume send\00", align 1
@EZFS_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"resume token contents:\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"toname\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"toguid\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"resume token is corrupt\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"fromguid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [61 x i8] c"'%s' is no longer the same snapshot used in the initial send\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"'%s' used in the initial send no longer exists\00", align 1
@EZFS_BADPATH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c"unable to access '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"incremental source %#llx no longer exists\00", align 1
@send_progress_thread = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@errno = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_send_resume(i32* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_10__, align 8
  %28 = alloca i32, align 4
  %29 = alloca [1024 x i8], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %20, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %21, align 8
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** @stdout, align 8
  br label %47

45:                                               ; preds = %38, %4
  %46 = load i32*, i32** @stderr, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32* [ %44, %43 ], [ %46, %45 ]
  store i32* %48, i32** %24, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %50 = load i32, i32* @TEXT_DOMAIN, align 4
  %51 = call i8* @dgettext(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 1024, i8* %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32* @zfs_send_resume_token_to_nvlist(i32* %53, i8* %54)
  store i32* %55, i32** %25, align 8
  %56 = load i32*, i32** %25, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @EZFS_FAULT, align 4
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %62 = call i32 @zfs_error(i32* %59, i32 %60, i8* %61)
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

63:                                               ; preds = %47
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32*, i32** %24, align 8
  %70 = load i32, i32* @TEXT_DOMAIN, align 4
  %71 = call i8* @dgettext(i32 %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @fprintf(i32* %69, i8* %71)
  %73 = load i32*, i32** %24, align 8
  %74 = load i32*, i32** %25, align 8
  %75 = call i32 @nvlist_print(i32* %73, i32* %74)
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i32*, i32** %25, align 8
  %78 = call i64 @nvlist_lookup_string(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %11)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %25, align 8
  %82 = call i64 @nvlist_lookup_uint64(i32* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %13)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %25, align 8
  %86 = call i64 @nvlist_lookup_uint64(i32* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64* %14)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %25, align 8
  %90 = call i64 @nvlist_lookup_uint64(i32* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i64* %17)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32*, i32** %25, align 8
  %94 = call i64 @nvlist_lookup_uint64(i32* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64* %15)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %92, %88, %84, %80, %76
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @TEXT_DOMAIN, align 4
  %99 = call i8* @dgettext(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %100 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %97, i8* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @EZFS_FAULT, align 4
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %104 = call i32 @zfs_error(i32* %101, i32 %102, i8* %103)
  store i32 %104, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

105:                                              ; preds = %92
  store i64 0, i64* %16, align 8
  %106 = load i32*, i32** %25, align 8
  %107 = call i64 @nvlist_lookup_uint64(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64* %16)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load i32*, i32** %25, align 8
  %114 = call i64 @nvlist_exists(i32* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112, %105
  %117 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %118 = load i32, i32* %22, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %22, align 4
  br label %120

120:                                              ; preds = %116, %112
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %120
  %126 = load i32*, i32** %25, align 8
  %127 = call i64 @nvlist_exists(i32* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125, %120
  %130 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %131 = load i32, i32* %22, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %22, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load i32*, i32** %25, align 8
  %140 = call i64 @nvlist_exists(i32* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138, %133
  %143 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %144 = load i32, i32* %22, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %22, align 4
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32*, i32** %6, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i32, i32* @B_FALSE, align 4
  %151 = call i64 @guid_to_name(i32* %147, i8* %148, i64 %149, i32 %150, i8* %33)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %146
  %154 = load i32*, i32** %6, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %157 = call i64 @zfs_dataset_exists(i32* %154, i8* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* @TEXT_DOMAIN, align 4
  %162 = call i8* @dgettext(i32 %161, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  %163 = load i8*, i8** %11, align 8
  %164 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %160, i8* %162, i8* %163)
  br label %171

165:                                              ; preds = %153
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* @TEXT_DOMAIN, align 4
  %168 = call i8* @dgettext(i32 %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %166, i8* %168, i8* %169)
  br label %171

171:                                              ; preds = %165, %159
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @EZFS_BADPATH, align 4
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %175 = call i32 @zfs_error(i32* %172, i32 %173, i8* %174)
  store i32 %175, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

176:                                              ; preds = %146
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %179 = call %struct.TYPE_8__* @zfs_open(i32* %177, i8* %33, i32 %178)
  store %struct.TYPE_8__* %179, %struct.TYPE_8__** %18, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %181 = icmp eq %struct.TYPE_8__* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load i32*, i32** %6, align 8
  %184 = load i32, i32* @TEXT_DOMAIN, align 4
  %185 = call i8* @dgettext(i32 %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %186 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %183, i8* %185, i8* %33)
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* @EZFS_BADPATH, align 4
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %190 = call i32 @zfs_error(i32* %187, i32 %188, i8* %189)
  store i32 %190, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

191:                                              ; preds = %176
  %192 = load i64, i64* %16, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %191
  %195 = load i32*, i32** %6, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = load i64, i64* %16, align 8
  %198 = load i32, i32* @B_TRUE, align 4
  %199 = call i64 @guid_to_name(i32* %195, i8* %196, i64 %197, i32 %198, i8* %33)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %194
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* @TEXT_DOMAIN, align 4
  %204 = call i8* @dgettext(i32 %203, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %205 = load i64, i64* %16, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %202, i8* %204, i32 %206)
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @EZFS_BADPATH, align 4
  %210 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %211 = call i32 @zfs_error(i32* %208, i32 %209, i8* %210)
  store i32 %211, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

212:                                              ; preds = %194
  store i8* %33, i8** %12, align 8
  br label %213

213:                                              ; preds = %212, %191
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %218, %213
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* %22, align 4
  %229 = call i32 @lzc_send_space(i32 %226, i8* %227, i32 %228, i64* %23)
  store i32 %229, i32* %19, align 4
  %230 = load i32, i32* %19, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %223
  %233 = load i64, i64* %23, align 8
  %234 = load i64, i64* %17, align 8
  %235 = sub nsw i64 %233, %234
  %236 = trunc i64 %235 to i32
  %237 = call i64 @MAX(i32 0, i32 %236)
  store i64 %237, i64* %23, align 8
  br label %238

238:                                              ; preds = %232, %223
  br label %239

239:                                              ; preds = %238, %218
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 4
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load i32*, i32** %24, align 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i8*, i8** %12, align 8
  %250 = load i64, i64* %23, align 8
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @send_print_verbose(i32* %245, i32 %248, i8* %249, i64 %250, i32 %253)
  br label %255

255:                                              ; preds = %244, %239
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %335, label %260

260:                                              ; preds = %255
  %261 = bitcast %struct.TYPE_10__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %261, i8 0, i64 40, i1 false)
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %290

266:                                              ; preds = %260
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  store %struct.TYPE_8__* %267, %struct.TYPE_8__** %268, align 8
  %269 = load i32, i32* %8, align 4
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %269, i32* %270, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store i32 %273, i32* %274, align 8
  %275 = load i64, i64* %23, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i64 %275, i64* %276, align 8
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* @send_progress_thread, align 4
  %282 = call i32 @pthread_create(i32* %28, i32* null, i32 %281, %struct.TYPE_10__* %27)
  store i32 %282, i32* %19, align 4
  %283 = load i32, i32* %19, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %266
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %287 = call i32 @zfs_close(%struct.TYPE_8__* %286)
  %288 = load i32, i32* %19, align 4
  store i32 %288, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

289:                                              ; preds = %266
  br label %290

290:                                              ; preds = %289, %260
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i8*, i8** %12, align 8
  %295 = load i32, i32* %8, align 4
  %296 = load i32, i32* %22, align 4
  %297 = load i64, i64* %13, align 8
  %298 = load i64, i64* %14, align 8
  %299 = call i32 @lzc_send_resume(i32 %293, i8* %294, i32 %295, i32 %296, i64 %297, i64 %298)
  store i32 %299, i32* %19, align 4
  %300 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %290
  %305 = load i32, i32* %28, align 4
  %306 = call i32 @pthread_cancel(i32 %305)
  %307 = load i32, i32* %28, align 4
  %308 = call i32 @pthread_join(i32 %307, i32* null)
  br label %309

309:                                              ; preds = %304, %290
  %310 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %311 = load i32, i32* @TEXT_DOMAIN, align 4
  %312 = call i8* @dgettext(i32 %311, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %310, i32 1024, i8* %312, i32 %315)
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %318 = call i32 @zfs_close(%struct.TYPE_8__* %317)
  %319 = load i32, i32* %19, align 4
  switch i32 %319, label %330 [
    i32 0, label %320
    i32 128, label %321
    i32 136, label %321
    i32 140, label %321
    i32 138, label %321
    i32 137, label %321
    i32 135, label %321
    i32 134, label %321
    i32 132, label %321
    i32 131, label %321
    i32 130, label %321
    i32 139, label %321
    i32 129, label %321
  ]

320:                                              ; preds = %309
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

321:                                              ; preds = %309, %309, %309, %309, %309, %309, %309, %309, %309, %309, %309, %309
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* @errno, align 4
  %324 = call i8* @strerror(i32 %323)
  %325 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %322, i8* %324)
  %326 = load i32*, i32** %6, align 8
  %327 = load i32, i32* @EZFS_BADBACKUP, align 4
  %328 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %329 = call i32 @zfs_error(i32* %326, i32 %327, i8* %328)
  store i32 %329, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

330:                                              ; preds = %309
  %331 = load i32*, i32** %6, align 8
  %332 = load i32, i32* @errno, align 4
  %333 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %334 = call i32 @zfs_standard_error(i32* %331, i32 %332, i8* %333)
  store i32 %334, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

335:                                              ; preds = %255
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %337 = call i32 @zfs_close(%struct.TYPE_8__* %336)
  %338 = load i32, i32* %19, align 4
  store i32 %338, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %339

339:                                              ; preds = %335, %330, %321, %320, %285, %201, %182, %171, %96, %58
  %340 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %340)
  %341 = load i32, i32* %5, align 4
  ret i32 %341
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32* @zfs_send_resume_token_to_nvlist(i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @fprintf(i32*, i8*) #2

declare dso_local i32 @nvlist_print(i32*, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i64 @nvlist_exists(i32*, i8*) #2

declare dso_local i64 @guid_to_name(i32*, i8*, i64, i32, i8*) #2

declare dso_local i64 @zfs_dataset_exists(i32*, i8*, i32) #2

declare dso_local %struct.TYPE_8__* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @lzc_send_space(i32, i8*, i32, i64*) #2

declare dso_local i64 @MAX(i32, i32) #2

declare dso_local i32 @send_print_verbose(i32*, i32, i8*, i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @zfs_close(%struct.TYPE_8__*) #2

declare dso_local i32 @lzc_send_resume(i32, i8*, i32, i32, i64, i64) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
