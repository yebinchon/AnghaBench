; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core_compat.c_lzc_compat_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs_core/common/extr_libzfs_core_compat.c_lzc_compat_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@zfs_ioctl_version = common dso_local global i64 0, align 8
@ZFS_IOCVER_LZC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"firstsnap\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@MAXNAMELEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzc_compat_pre(%struct.TYPE_3__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* @zfs_ioctl_version, align 8
  %19 = load i64, i64* @ZFS_IOCVER_LZC, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %294

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  switch i32 %25, label %292 [
    i32 133, label %26
    i32 134, label %38
    i32 129, label %54
    i32 128, label %104
    i32 132, label %114
    i32 131, label %149
    i32 130, label %219
  ]

26:                                               ; preds = %22
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @fnvlist_lookup_int32(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32**, i32*** %7, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @nvlist_lookup_nvlist(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %8)
  %36 = load i32*, i32** %8, align 8
  %37 = load i32**, i32*** %7, align 8
  store i32* %36, i32** %37, align 8
  br label %292

38:                                               ; preds = %22
  %39 = load i32**, i32*** %7, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @fnvlist_lookup_string(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %41, i8** %11, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i32, i32* @MAXPATHLEN, align 4
  %47 = call i32 @strlcpy(i32 %44, i8* %45, i32 %46)
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @nvlist_lookup_nvlist(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %8)
  %51 = load i32*, i32** %6, align 8
  store i32 133, i32* %51, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32**, i32*** %7, align 8
  store i32* %52, i32** %53, align 8
  br label %292

54:                                               ; preds = %22
  %55 = load i32**, i32*** %7, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = call i32* @fnvlist_lookup_nvlist(i32* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @nvlist_next_nvpair(i32* %58, i32* null)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %54
  %63 = load i32*, i32** %9, align 8
  %64 = call i8* @nvpair_name(i32* %63)
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @strcspn(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %66, i32* %17, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @strlcpy(i32 %69, i8* %70, i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i32, i32* @MAXPATHLEN, align 4
  %83 = call i32 @strlcpy(i32 %76, i8* %81, i32 %82)
  br label %86

84:                                               ; preds = %54
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %84, %62
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32* @nvlist_next_nvpair(i32* %90, i32* %91)
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %95, i32* %16, align 4
  br label %96

96:                                               ; preds = %94, %89, %86
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @nvlist_free(i32* %97)
  store i32* null, i32** %8, align 8
  %99 = load i32**, i32*** %7, align 8
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @nvlist_lookup_nvlist(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %8)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32**, i32*** %7, align 8
  store i32* %102, i32** %103, align 8
  br label %292

104:                                              ; preds = %22
  %105 = load i32**, i32*** %7, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i8* @fnvlist_lookup_string(i32* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %107, i8** %11, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* @MAXPATHLEN, align 4
  %113 = call i32 @strlcpy(i32 %110, i8* %111, i32 %112)
  br label %292

114:                                              ; preds = %22
  %115 = load i32**, i32*** %7, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = call i32* @fnvlist_lookup_nvlist(i32* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = call i32* @nvlist_next_nvpair(i32* %118, i32* null)
  store i32* %119, i32** %9, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load i32*, i32** %9, align 8
  %124 = call i8* @nvpair_name(i32* %123)
  store i8* %124, i8** %11, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @strcspn(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  %133 = call i32 @strlcpy(i32 %129, i8* %130, i32 %132)
  br label %136

134:                                              ; preds = %114
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %122
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = call i32* @nvlist_next_nvpair(i32* %140, i32* %141)
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %144, %139, %136
  %147 = load i32*, i32** %8, align 8
  %148 = load i32**, i32*** %7, align 8
  store i32* %147, i32** %148, align 8
  br label %292

149:                                              ; preds = %22
  %150 = load i32**, i32*** %7, align 8
  %151 = load i32*, i32** %150, align 8
  %152 = call i32* @fnvlist_lookup_nvlist(i32* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32* %152, i32** %8, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32* @nvlist_next_nvpair(i32* %153, i32* null)
  store i32* %154, i32** %9, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %192

157:                                              ; preds = %149
  %158 = load i32*, i32** %9, align 8
  %159 = call i8* @nvpair_name(i32* %158)
  store i8* %159, i8** %11, align 8
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @strcspn(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %161, i32* %17, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %11, align 8
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  %168 = call i32 @strlcpy(i32 %164, i8* %165, i32 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %11, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = load i32, i32* @MAXPATHLEN, align 4
  %178 = call i32 @strlcpy(i32 %171, i8* %176, i32 %177)
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 @nvpair_value_string(i32* %179, i8** %12)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %157
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = load i32, i32* @MAXNAMELEN, align 4
  %188 = call i32 @strlcpy(i32 %185, i8* %186, i32 %187)
  br label %191

189:                                              ; preds = %157
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %16, align 4
  br label %191

191:                                              ; preds = %189, %182
  br label %194

192:                                              ; preds = %149
  %193 = load i32, i32* @EINVAL, align 4
  store i32 %193, i32* %16, align 4
  br label %194

194:                                              ; preds = %192, %191
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %204, label %197

197:                                              ; preds = %194
  %198 = load i32*, i32** %8, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = call i32* @nvlist_next_nvpair(i32* %198, i32* %199)
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %202, %197, %194
  %205 = load i32*, i32** %8, align 8
  %206 = call i32 @nvlist_free(i32* %205)
  %207 = load i32**, i32*** %7, align 8
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @nvlist_lookup_int32(i32* %208, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32* %15)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %204
  %212 = load i32, i32* %15, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  br label %218

215:                                              ; preds = %204
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i32 -1, i32* %217, align 4
  br label %218

218:                                              ; preds = %215, %211
  br label %292

219:                                              ; preds = %22
  %220 = load i32**, i32*** %7, align 8
  %221 = load i32*, i32** %220, align 8
  %222 = call i32* @nvlist_next_nvpair(i32* %221, i32* null)
  store i32* %222, i32** %9, align 8
  %223 = load i32*, i32** %9, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %279

225:                                              ; preds = %219
  %226 = load i32*, i32** %9, align 8
  %227 = call i8* @nvpair_name(i32* %226)
  store i8* %227, i8** %11, align 8
  %228 = load i8*, i8** %11, align 8
  %229 = call i32 @strcspn(i8* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %229, i32* %17, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i8*, i8** %11, align 8
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  %236 = call i32 @strlcpy(i32 %232, i8* %233, i32 %235)
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %11, align 8
  %241 = load i32, i32* %17, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = getelementptr inbounds i8, i8* %243, i64 1
  %245 = load i32, i32* @MAXPATHLEN, align 4
  %246 = call i32 @strlcpy(i32 %239, i8* %244, i32 %245)
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @nvpair_value_nvlist(i32* %247, i32** %8)
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %225
  %251 = load i32*, i32** %8, align 8
  %252 = call i32* @nvlist_next_nvpair(i32* %251, i32* null)
  store i32* %252, i32** %10, align 8
  %253 = load i32*, i32** %10, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %10, align 8
  %260 = call i8* @nvpair_name(i32* %259)
  %261 = load i32, i32* @MAXNAMELEN, align 4
  %262 = call i32 @strlcpy(i32 %258, i8* %260, i32 %261)
  br label %265

263:                                              ; preds = %250
  %264 = load i32, i32* @EINVAL, align 4
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %263, %255
  %266 = load i32, i32* %16, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %265
  %269 = load i32*, i32** %8, align 8
  %270 = load i32*, i32** %10, align 8
  %271 = call i32* @nvlist_next_nvpair(i32* %269, i32* %270)
  %272 = icmp ne i32* %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %274, i32* %16, align 4
  br label %275

275:                                              ; preds = %273, %268, %265
  br label %278

276:                                              ; preds = %225
  %277 = load i32, i32* @EINVAL, align 4
  store i32 %277, i32* %16, align 4
  br label %278

278:                                              ; preds = %276, %275
  br label %281

279:                                              ; preds = %219
  %280 = load i32, i32* @EINVAL, align 4
  store i32 %280, i32* %16, align 4
  br label %281

281:                                              ; preds = %279, %278
  %282 = load i32, i32* %16, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %281
  %285 = load i32*, i32** %8, align 8
  %286 = load i32*, i32** %9, align 8
  %287 = call i32* @nvlist_next_nvpair(i32* %285, i32* %286)
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %290, i32* %16, align 4
  br label %291

291:                                              ; preds = %289, %284, %281
  br label %292

292:                                              ; preds = %22, %291, %218, %146, %104, %96, %38, %26
  %293 = load i32, i32* %16, align 4
  store i32 %293, i32* %4, align 4
  br label %294

294:                                              ; preds = %292, %21
  %295 = load i32, i32* %4, align 4
  ret i32 %295
}

declare dso_local i32 @fnvlist_lookup_int32(i32*, i8*) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @nvlist_lookup_int32(i32*, i8*, i32*) #1

declare dso_local i32 @nvpair_value_nvlist(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
