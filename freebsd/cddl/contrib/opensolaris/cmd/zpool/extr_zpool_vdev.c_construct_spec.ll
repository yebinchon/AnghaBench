; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_construct_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_vdev.c_construct_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@VDEV_TYPE_SPARE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"invalid vdev specification: 'spare' can be specified only once\0A\00", align 1
@VDEV_TYPE_LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"invalid vdev specification: 'log' can be specified only once\0A\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@VDEV_TYPE_L2CACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"invalid vdev specification: 'cache' can be specified only once\0A\00", align 1
@VDEV_TYPE_MIRROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"invalid vdev specification: unsupported 'log' device: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"invalid vdev specification: %s requires at least %d devices\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"invalid vdev specification: %s supports no more than %d devices\0A\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"invalid vdev specification: at least one toplevel vdev must be specified\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"invalid vdev specification: log requires at least 1 device\0A\00", align 1
@VDEV_TYPE_ROOT = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @construct_spec(i32 %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32** null, i32*** %8, align 8
  store i32 0, i32* %12, align 4
  store i32** null, i32*** %9, align 8
  store i32** null, i32*** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %20, align 4
  br label %26

26:                                               ; preds = %287, %191, %183, %61, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %294

29:                                               ; preds = %26
  store i32* null, i32** %7, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @is_grouping(i8* %32, i32* %13, i32* %14)
  store i8* %33, i8** %18, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %255

35:                                               ; preds = %29
  store i32** null, i32*** %21, align 8
  store i32 0, i32* %23, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = load i32, i32* @VDEV_TYPE_SPARE, align 4
  %38 = call i64 @strcmp(i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32**, i32*** %9, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45)
  store i32* null, i32** %3, align 8
  br label %422

47:                                               ; preds = %40
  %48 = load i32, i32* @B_FALSE, align 4
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %47, %35
  %50 = load i8*, i8** %18, align 8
  %51 = load i32, i32* @VDEV_TYPE_LOG, align 4
  %52 = call i64 @strcmp(i8* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %49
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* %59)
  store i32* null, i32** %3, align 8
  br label %422

61:                                               ; preds = %54
  %62 = load i8*, i8** @B_TRUE, align 8
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %20, align 4
  %64 = load i8*, i8** @B_TRUE, align 8
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %5, align 8
  br label %26

70:                                               ; preds = %49
  %71 = load i8*, i8** %18, align 8
  %72 = load i32, i32* @VDEV_TYPE_L2CACHE, align 4
  %73 = call i64 @strcmp(i8* %71, i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i32**, i32*** %10, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* %80)
  store i32* null, i32** %3, align 8
  br label %422

82:                                               ; preds = %75
  %83 = load i32, i32* @B_FALSE, align 4
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %82, %70
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load i8*, i8** %18, align 8
  %89 = load i32, i32* @VDEV_TYPE_MIRROR, align 4
  %90 = call i64 @strcmp(i8* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @stderr, align 4
  %94 = call i8* @gettext(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i8*, i8** %18, align 8
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* %94, i8* %95)
  store i32* null, i32** %3, align 8
  br label %422

97:                                               ; preds = %87
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %84
  store i32 1, i32* %22, align 4
  br label %101

101:                                              ; preds = %144, %100
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %147

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i8* @is_grouping(i8* %110, i32* null, i32* null)
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %147

114:                                              ; preds = %105
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  %117 = load i32**, i32*** %21, align 8
  %118 = load i32, i32* %23, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i32** @realloc(i32** %117, i32 %121)
  store i32** %122, i32*** %21, align 8
  %123 = load i32**, i32*** %21, align 8
  %124 = icmp eq i32** %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = call i32 (...) @zpool_no_memory()
  br label %127

127:                                              ; preds = %125, %114
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* @B_FALSE, align 4
  %134 = call i32* @make_leaf_vdev(i8* %132, i32 %133)
  store i32* %134, i32** %7, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32* null, i32** %3, align 8
  br label %422

137:                                              ; preds = %127
  %138 = load i32*, i32** %7, align 8
  %139 = load i32**, i32*** %21, align 8
  %140 = load i32, i32* %23, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %139, i64 %142
  store i32* %138, i32** %143, align 8
  br label %144

144:                                              ; preds = %137
  %145 = load i32, i32* %22, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %22, align 4
  br label %101

147:                                              ; preds = %113, %101
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %147
  %152 = load i32, i32* @stderr, align 4
  %153 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* %153, i8* %156, i32 %157)
  store i32* null, i32** %3, align 8
  br label %422

159:                                              ; preds = %147
  %160 = load i32, i32* %23, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %159
  %164 = load i32, i32* @stderr, align 4
  %165 = call i8* @gettext(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* %165, i8* %168, i32 %169)
  store i32* null, i32** %3, align 8
  br label %422

171:                                              ; preds = %159
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %4, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i8**, i8*** %5, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i8*, i8** %176, i64 %177
  store i8** %178, i8*** %5, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = load i32, i32* @VDEV_TYPE_SPARE, align 4
  %181 = call i64 @strcmp(i8* %179, i32 %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %171
  %184 = load i32**, i32*** %21, align 8
  store i32** %184, i32*** %9, align 8
  %185 = load i32, i32* %23, align 4
  store i32 %185, i32* %15, align 4
  br label %26

186:                                              ; preds = %171
  %187 = load i8*, i8** %18, align 8
  %188 = load i32, i32* @VDEV_TYPE_L2CACHE, align 4
  %189 = call i64 @strcmp(i8* %187, i32 %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i32**, i32*** %21, align 8
  store i32** %192, i32*** %10, align 8
  %193 = load i32, i32* %23, align 4
  store i32 %193, i32* %17, align 4
  br label %26

194:                                              ; preds = %186
  %195 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %196 = call i64 @nvlist_alloc(i32** %7, i32 %195, i32 0)
  %197 = icmp eq i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 @verify(i32 %198)
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %202 = load i8*, i8** %18, align 8
  %203 = call i64 @nvlist_add_string(i32* %200, i32 %201, i8* %202)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @verify(i32 %205)
  %207 = load i32*, i32** %7, align 8
  %208 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %209 = load i32, i32* %19, align 4
  %210 = call i64 @nvlist_add_uint64(i32* %207, i32 %208, i32 %209)
  %211 = icmp eq i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @verify(i32 %212)
  %214 = load i8*, i8** %18, align 8
  %215 = load i32, i32* @VDEV_TYPE_RAIDZ, align 4
  %216 = call i64 @strcmp(i8* %214, i32 %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %194
  %219 = load i32*, i32** %7, align 8
  %220 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %221 = load i32, i32* %13, align 4
  %222 = sub nsw i32 %221, 1
  %223 = call i64 @nvlist_add_uint64(i32* %219, i32 %220, i32 %222)
  %224 = icmp eq i64 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @verify(i32 %225)
  br label %227

227:                                              ; preds = %218, %194
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %230 = load i32**, i32*** %21, align 8
  %231 = load i32, i32* %23, align 4
  %232 = call i64 @nvlist_add_nvlist_array(i32* %228, i32 %229, i32** %230, i32 %231)
  %233 = icmp eq i64 %232, 0
  %234 = zext i1 %233 to i32
  %235 = call i32 @verify(i32 %234)
  store i32 0, i32* %22, align 4
  br label %236

236:                                              ; preds = %247, %227
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load i32**, i32*** %21, align 8
  %242 = load i32, i32* %22, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @nvlist_free(i32* %245)
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %22, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %22, align 4
  br label %236

250:                                              ; preds = %236
  %251 = load i32**, i32*** %21, align 8
  %252 = call i32 @free(i32** %251)
  br label %253

253:                                              ; preds = %250
  br label %254

254:                                              ; preds = %253
  br label %274

255:                                              ; preds = %29
  %256 = load i8**, i8*** %5, align 8
  %257 = getelementptr inbounds i8*, i8** %256, i64 0
  %258 = load i8*, i8** %257, align 8
  %259 = load i32, i32* %19, align 4
  %260 = call i32* @make_leaf_vdev(i8* %258, i32 %259)
  store i32* %260, i32** %7, align 8
  %261 = icmp eq i32* %260, null
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  store i32* null, i32** %3, align 8
  br label %422

263:                                              ; preds = %255
  %264 = load i32, i32* %19, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %263
  %267 = load i32, i32* %16, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %16, align 4
  br label %269

269:                                              ; preds = %266, %263
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %4, align 4
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i32 1
  store i8** %273, i8*** %5, align 8
  br label %274

274:                                              ; preds = %269, %254
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  %277 = load i32**, i32*** %8, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 %279, 8
  %281 = trunc i64 %280 to i32
  %282 = call i32** @realloc(i32** %277, i32 %281)
  store i32** %282, i32*** %8, align 8
  %283 = load i32**, i32*** %8, align 8
  %284 = icmp eq i32** %283, null
  br i1 %284, label %285, label %287

285:                                              ; preds = %274
  %286 = call i32 (...) @zpool_no_memory()
  br label %287

287:                                              ; preds = %285, %274
  %288 = load i32*, i32** %7, align 8
  %289 = load i32**, i32*** %8, align 8
  %290 = load i32, i32* %12, align 4
  %291 = sub nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %289, i64 %292
  store i32* %288, i32** %293, align 8
  br label %26

294:                                              ; preds = %26
  %295 = load i32, i32* %12, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load i32, i32* %15, align 4
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %297
  %301 = load i32, i32* %17, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load i32, i32* @stderr, align 4
  %305 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %306 = call i32 (i32, i8*, ...) @fprintf(i32 %304, i8* %305)
  store i32* null, i32** %3, align 8
  br label %422

307:                                              ; preds = %300, %297, %294
  %308 = load i32, i32* %20, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %317

310:                                              ; preds = %307
  %311 = load i32, i32* %16, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load i32, i32* @stderr, align 4
  %315 = call i8* @gettext(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %316 = call i32 (i32, i8*, ...) @fprintf(i32 %314, i8* %315)
  store i32* null, i32** %3, align 8
  br label %422

317:                                              ; preds = %310, %307
  %318 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %319 = call i64 @nvlist_alloc(i32** %6, i32 %318, i32 0)
  %320 = icmp eq i64 %319, 0
  %321 = zext i1 %320 to i32
  %322 = call i32 @verify(i32 %321)
  %323 = load i32*, i32** %6, align 8
  %324 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %325 = load i8*, i8** @VDEV_TYPE_ROOT, align 8
  %326 = call i64 @nvlist_add_string(i32* %323, i32 %324, i8* %325)
  %327 = icmp eq i64 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @verify(i32 %328)
  %330 = load i32*, i32** %6, align 8
  %331 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %332 = load i32**, i32*** %8, align 8
  %333 = load i32, i32* %12, align 4
  %334 = call i64 @nvlist_add_nvlist_array(i32* %330, i32 %331, i32** %332, i32 %333)
  %335 = icmp eq i64 %334, 0
  %336 = zext i1 %335 to i32
  %337 = call i32 @verify(i32 %336)
  %338 = load i32, i32* %15, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %317
  %341 = load i32*, i32** %6, align 8
  %342 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %343 = load i32**, i32*** %9, align 8
  %344 = load i32, i32* %15, align 4
  %345 = call i64 @nvlist_add_nvlist_array(i32* %341, i32 %342, i32** %343, i32 %344)
  %346 = icmp eq i64 %345, 0
  %347 = zext i1 %346 to i32
  %348 = call i32 @verify(i32 %347)
  br label %349

349:                                              ; preds = %340, %317
  %350 = load i32, i32* %17, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %349
  %353 = load i32*, i32** %6, align 8
  %354 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %355 = load i32**, i32*** %10, align 8
  %356 = load i32, i32* %17, align 4
  %357 = call i64 @nvlist_add_nvlist_array(i32* %353, i32 %354, i32** %355, i32 %356)
  %358 = icmp eq i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @verify(i32 %359)
  br label %361

361:                                              ; preds = %352, %349
  store i32 0, i32* %11, align 4
  br label %362

362:                                              ; preds = %373, %361
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* %12, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %376

366:                                              ; preds = %362
  %367 = load i32**, i32*** %8, align 8
  %368 = load i32, i32* %11, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32*, i32** %367, i64 %369
  %371 = load i32*, i32** %370, align 8
  %372 = call i32 @nvlist_free(i32* %371)
  br label %373

373:                                              ; preds = %366
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %11, align 4
  br label %362

376:                                              ; preds = %362
  store i32 0, i32* %11, align 4
  br label %377

377:                                              ; preds = %388, %376
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %15, align 4
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %391

381:                                              ; preds = %377
  %382 = load i32**, i32*** %9, align 8
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = call i32 @nvlist_free(i32* %386)
  br label %388

388:                                              ; preds = %381
  %389 = load i32, i32* %11, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %11, align 4
  br label %377

391:                                              ; preds = %377
  store i32 0, i32* %11, align 4
  br label %392

392:                                              ; preds = %403, %391
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* %17, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %406

396:                                              ; preds = %392
  %397 = load i32**, i32*** %10, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32*, i32** %397, i64 %399
  %401 = load i32*, i32** %400, align 8
  %402 = call i32 @nvlist_free(i32* %401)
  br label %403

403:                                              ; preds = %396
  %404 = load i32, i32* %11, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %11, align 4
  br label %392

406:                                              ; preds = %392
  %407 = load i32**, i32*** %9, align 8
  %408 = icmp ne i32** %407, null
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load i32**, i32*** %9, align 8
  %411 = call i32 @free(i32** %410)
  br label %412

412:                                              ; preds = %409, %406
  %413 = load i32**, i32*** %10, align 8
  %414 = icmp ne i32** %413, null
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load i32**, i32*** %10, align 8
  %417 = call i32 @free(i32** %416)
  br label %418

418:                                              ; preds = %415, %412
  %419 = load i32**, i32*** %8, align 8
  %420 = call i32 @free(i32** %419)
  %421 = load i32*, i32** %6, align 8
  store i32* %421, i32** %3, align 8
  br label %422

422:                                              ; preds = %418, %313, %303, %262, %163, %151, %136, %92, %78, %57, %43
  %423 = load i32*, i32** %3, align 8
  ret i32* %423
}

declare dso_local i8* @is_grouping(i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32** @realloc(i32**, i32) #1

declare dso_local i32 @zpool_no_memory(...) #1

declare dso_local i32* @make_leaf_vdev(i8*, i32) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
