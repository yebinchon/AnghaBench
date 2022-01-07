; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_create_shortname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_create_shortname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nls_table = type { i32 }
%struct.fat_mount_options = type { i32, i64 }
%struct.shortname_info = type { i64, i64, i64 }
%struct.TYPE_2__ = type { %struct.fat_mount_options }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i8 0, align 1
@MSDOS_NAME = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@VFAT_SFN_CREATE_WIN95 = common dso_local global i32 0, align 4
@VFAT_SFN_CREATE_WINNT = common dso_local global i32 0, align 4
@CASE_LOWER_BASE = common dso_local global i8 0, align 1
@CASE_LOWER_EXT = common dso_local global i8 0, align 1
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nls_table*, i32*, i32, i8*, i8*)* @vfat_create_shortname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_create_shortname(%struct.inode* %0, %struct.nls_table* %1, i32* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nls_table*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.fat_mount_options*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [9 x i8], align 1
  %20 = alloca [4 x i8], align 1
  %21 = alloca [5 x i8], align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.shortname_info, align 8
  %35 = alloca %struct.shortname_info, align 8
  %36 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.nls_table* %1, %struct.nls_table** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_2__* @MSDOS_SB(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.fat_mount_options* %41, %struct.fat_mount_options** %14, align 8
  %42 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %23, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %24, align 8
  store i32 0, i32* %27, align 4
  store i32 1, i32* %33, align 4
  %46 = call i32 @INIT_SHORTNAME_INFO(%struct.shortname_info* %34)
  %47 = call i32 @INIT_SHORTNAME_INFO(%struct.shortname_info* %35)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %17, align 8
  store i32* %51, i32** %16, align 8
  br label %52

52:                                               ; preds = %69, %6
  %53 = load i32*, i32** %16, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 -1
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp uge i32* %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32*, i32** %16, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 -1
  %65 = icmp eq i32* %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %27, align 4
  store i32* null, i32** %16, align 8
  br label %68

68:                                               ; preds = %66, %61
  br label %70

69:                                               ; preds = %57
  br label %52

70:                                               ; preds = %68, %52
  %71 = load i32*, i32** %16, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 -1
  %74 = icmp eq i32* %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %27, align 4
  store i32* null, i32** %16, align 8
  br label %114

77:                                               ; preds = %70
  %78 = load i32*, i32** %16, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32* %82, i32** %18, align 8
  br label %83

83:                                               ; preds = %93, %80
  %84 = load i32*, i32** %18, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = icmp ult i32* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i32*, i32** %18, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vfat_skip_char(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  br label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %18, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %18, align 8
  br label %83

96:                                               ; preds = %92, %83
  %97 = load i32*, i32** %18, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = icmp ne i32* %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %27, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %16, align 8
  br label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %27, align 4
  store i32* null, i32** %16, align 8
  br label %112

112:                                              ; preds = %110, %100
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113, %75
  store i32 6, i32* %31, align 4
  store i32 2, i32* %32, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  %115 = getelementptr inbounds [9 x i8], [9 x i8]* %19, i64 0, i64 0
  store i8* %115, i8** %22, align 8
  %116 = load i32*, i32** %10, align 8
  store i32* %116, i32** %15, align 8
  br label %117

117:                                              ; preds = %192, %114
  %118 = load i32, i32* %30, align 4
  %119 = load i32, i32* %27, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %197

121:                                              ; preds = %117
  %122 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %123 = trunc i64 %43 to i32
  %124 = load i32*, i32** %15, align 8
  %125 = call i32 @to_shortname_char(%struct.nls_table* %122, i8* %45, i32 %123, i32* %124, %struct.shortname_info* %34)
  store i32 %125, i32* %25, align 4
  %126 = load i32, i32* %25, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %192

129:                                              ; preds = %121
  %130 = load i32, i32* %29, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sgt i32 %135, 2
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %29, align 4
  store i32 %138, i32* %32, align 4
  br label %139

139:                                              ; preds = %137, %132, %129
  %140 = load i32, i32* %29, align 4
  %141 = icmp slt i32 %140, 6
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %29, align 4
  %144 = load i32, i32* %25, align 4
  %145 = add nsw i32 %143, %144
  %146 = icmp sgt i32 %145, 6
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %29, align 4
  store i32 %148, i32* %31, align 4
  br label %149

149:                                              ; preds = %147, %142, %139
  store i32 0, i32* %26, align 4
  br label %150

150:                                              ; preds = %167, %149
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* %25, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load i32, i32* %26, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %45, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %22, align 8
  store i8 %158, i8* %159, align 1
  %161 = load i32, i32* %29, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %29, align 4
  %163 = load i32, i32* %29, align 4
  %164 = icmp sge i32 %163, 8
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %170

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %26, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %26, align 4
  br label %150

170:                                              ; preds = %165, %150
  %171 = load i32, i32* %29, align 4
  %172 = icmp sge i32 %171, 8
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* %25, align 4
  %176 = sub nsw i32 %175, 1
  %177 = icmp slt i32 %174, %176
  br i1 %177, label %189, label %178

178:                                              ; preds = %173
  %179 = load i32*, i32** %15, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32*, i32** %10, align 8
  %182 = ptrtoint i32* %180 to i64
  %183 = ptrtoint i32* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 4
  %186 = load i32, i32* %27, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp slt i64 %185, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %178, %173
  store i32 0, i32* %33, align 4
  br label %190

190:                                              ; preds = %189, %178
  br label %197

191:                                              ; preds = %170
  br label %192

192:                                              ; preds = %191, %128
  %193 = load i32, i32* %30, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %30, align 4
  %195 = load i32*, i32** %15, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %15, align 8
  br label %117

197:                                              ; preds = %190, %117
  %198 = load i32, i32* %29, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

203:                                              ; preds = %197
  store i32 0, i32* %28, align 4
  %204 = load i32*, i32** %16, align 8
  %205 = icmp ne i32* %204, null
  br i1 %205, label %206, label %264

206:                                              ; preds = %203
  %207 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  store i8* %207, i8** %22, align 8
  %208 = load i32*, i32** %16, align 8
  store i32* %208, i32** %15, align 8
  br label %209

209:                                              ; preds = %260, %206
  %210 = load i32, i32* %28, align 4
  %211 = icmp slt i32 %210, 3
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %17, align 8
  %215 = icmp ult i32* %213, %214
  br label %216

216:                                              ; preds = %212, %209
  %217 = phi i1 [ false, %209 ], [ %215, %212 ]
  br i1 %217, label %218, label %263

218:                                              ; preds = %216
  %219 = load %struct.nls_table*, %struct.nls_table** %9, align 8
  %220 = trunc i64 %43 to i32
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @to_shortname_char(%struct.nls_table* %219, i8* %45, i32 %220, i32* %221, %struct.shortname_info* %35)
  store i32 %222, i32* %25, align 4
  %223 = load i32, i32* %25, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  br label %260

226:                                              ; preds = %218
  %227 = load i32, i32* %28, align 4
  %228 = load i32, i32* %25, align 4
  %229 = add nsw i32 %227, %228
  %230 = icmp sgt i32 %229, 3
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  store i32 0, i32* %33, align 4
  br label %263

232:                                              ; preds = %226
  store i32 0, i32* %26, align 4
  br label %233

233:                                              ; preds = %246, %232
  %234 = load i32, i32* %26, align 4
  %235 = load i32, i32* %25, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %249

237:                                              ; preds = %233
  %238 = load i32, i32* %26, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %45, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %22, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %22, align 8
  store i8 %241, i8* %242, align 1
  %244 = load i32, i32* %28, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %28, align 4
  br label %246

246:                                              ; preds = %237
  %247 = load i32, i32* %26, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %26, align 4
  br label %233

249:                                              ; preds = %233
  %250 = load i32, i32* %28, align 4
  %251 = icmp sge i32 %250, 3
  br i1 %251, label %252, label %259

252:                                              ; preds = %249
  %253 = load i32*, i32** %15, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = load i32*, i32** %17, align 8
  %256 = icmp ne i32* %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  store i32 0, i32* %33, align 4
  br label %258

258:                                              ; preds = %257, %252
  br label %263

259:                                              ; preds = %249
  br label %260

260:                                              ; preds = %259, %225
  %261 = load i32*, i32** %15, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %15, align 8
  br label %209

263:                                              ; preds = %258, %231, %216
  br label %264

264:                                              ; preds = %263, %203
  %265 = load i32, i32* %28, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 %266
  store i8 0, i8* %267, align 1
  %268 = load i32, i32* %29, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [9 x i8], [9 x i8]* %19, i64 0, i64 %269
  store i8 0, i8* %270, align 1
  %271 = getelementptr inbounds [9 x i8], [9 x i8]* %19, i64 0, i64 0
  %272 = load i8, i8* %271, align 1
  %273 = zext i8 %272 to i32
  %274 = load i8, i8* @DELETED_FLAG, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %273, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %264
  %278 = getelementptr inbounds [9 x i8], [9 x i8]* %19, i64 0, i64 0
  store i8 5, i8* %278, align 1
  br label %279

279:                                              ; preds = %277, %264
  %280 = load i8*, i8** %12, align 8
  %281 = load i32, i32* @MSDOS_NAME, align 4
  %282 = call i32 @memset(i8* %280, i8 signext 32, i32 %281)
  %283 = load i8*, i8** %12, align 8
  %284 = getelementptr inbounds [9 x i8], [9 x i8]* %19, i64 0, i64 0
  %285 = load i32, i32* %29, align 4
  %286 = call i32 @memcpy(i8* %283, i8* %284, i32 %285)
  %287 = load i8*, i8** %12, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 8
  %289 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %290 = load i32, i32* %28, align 4
  %291 = call i32 @memcpy(i8* %288, i8* %289, i32 %290)
  %292 = load i8*, i8** %13, align 8
  store i8 0, i8* %292, align 1
  %293 = load i32, i32* %33, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %390

295:                                              ; preds = %279
  %296 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %390

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %390

303:                                              ; preds = %299
  %304 = load %struct.inode*, %struct.inode** %8, align 8
  %305 = load i8*, i8** %12, align 8
  %306 = call i64 @vfat_find_form(%struct.inode* %304, i8* %305)
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load i32, i32* @EEXIST, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

311:                                              ; preds = %303
  %312 = load %struct.fat_mount_options*, %struct.fat_mount_options** %14, align 8
  %313 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @VFAT_SFN_CREATE_WIN95, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br label %326

326:                                              ; preds = %322, %318
  %327 = phi i1 [ false, %318 ], [ %325, %322 ]
  %328 = zext i1 %327 to i32
  store i32 %328, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

329:                                              ; preds = %311
  %330 = load %struct.fat_mount_options*, %struct.fat_mount_options** %14, align 8
  %331 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @VFAT_SFN_CREATE_WINNT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %386

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %385

344:                                              ; preds = %340, %336
  %345 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %385

352:                                              ; preds = %348, %344
  %353 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %368, label %356

356:                                              ; preds = %352
  %357 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %34, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %368

360:                                              ; preds = %356
  %361 = load i8, i8* @CASE_LOWER_BASE, align 1
  %362 = zext i8 %361 to i32
  %363 = load i8*, i8** %13, align 8
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = or i32 %365, %362
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %363, align 1
  br label %368

368:                                              ; preds = %360, %356, %352
  %369 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %384, label %372

372:                                              ; preds = %368
  %373 = getelementptr inbounds %struct.shortname_info, %struct.shortname_info* %35, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %372
  %377 = load i8, i8* @CASE_LOWER_EXT, align 1
  %378 = zext i8 %377 to i32
  %379 = load i8*, i8** %13, align 8
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = or i32 %381, %378
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %379, align 1
  br label %384

384:                                              ; preds = %376, %372, %368
  store i32 1, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

385:                                              ; preds = %348, %340
  store i32 0, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

386:                                              ; preds = %329
  %387 = call i32 (...) @BUG()
  br label %388

388:                                              ; preds = %386
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389, %299, %295, %279
  %391 = load %struct.fat_mount_options*, %struct.fat_mount_options** %14, align 8
  %392 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %390
  %396 = load %struct.inode*, %struct.inode** %8, align 8
  %397 = load i8*, i8** %12, align 8
  %398 = call i64 @vfat_find_form(%struct.inode* %396, i8* %397)
  %399 = icmp slt i64 %398, 0
  br i1 %399, label %400, label %401

400:                                              ; preds = %395
  store i32 0, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

401:                                              ; preds = %395
  br label %402

402:                                              ; preds = %401, %390
  %403 = load i32, i32* %29, align 4
  %404 = icmp sgt i32 %403, 6
  br i1 %404, label %405, label %409

405:                                              ; preds = %402
  %406 = load i32, i32* %31, align 4
  store i32 %406, i32* %29, align 4
  %407 = load i8*, i8** %12, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 7
  store i8 32, i8* %408, align 1
  br label %409

409:                                              ; preds = %405, %402
  %410 = load i8*, i8** %12, align 8
  %411 = load i32, i32* %29, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  store i8 126, i8* %413, align 1
  store i32 1, i32* %30, align 4
  br label %414

414:                                              ; preds = %432, %409
  %415 = load i32, i32* %30, align 4
  %416 = icmp slt i32 %415, 10
  br i1 %416, label %417, label %435

417:                                              ; preds = %414
  %418 = load i32, i32* %30, align 4
  %419 = add nsw i32 %418, 48
  %420 = trunc i32 %419 to i8
  %421 = load i8*, i8** %12, align 8
  %422 = load i32, i32* %29, align 4
  %423 = add nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, i8* %421, i64 %424
  store i8 %420, i8* %425, align 1
  %426 = load %struct.inode*, %struct.inode** %8, align 8
  %427 = load i8*, i8** %12, align 8
  %428 = call i64 @vfat_find_form(%struct.inode* %426, i8* %427)
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %417
  store i32 0, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

431:                                              ; preds = %417
  br label %432

432:                                              ; preds = %431
  %433 = load i32, i32* %30, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %30, align 4
  br label %414

435:                                              ; preds = %414
  %436 = load i32, i32* @jiffies, align 4
  store i32 %436, i32* %30, align 4
  %437 = load i32, i32* @jiffies, align 4
  %438 = ashr i32 %437, 16
  %439 = and i32 %438, 7
  store i32 %439, i32* %27, align 4
  %440 = load i32, i32* %29, align 4
  %441 = icmp sgt i32 %440, 2
  br i1 %441, label %442, label %446

442:                                              ; preds = %435
  %443 = load i32, i32* %32, align 4
  store i32 %443, i32* %29, align 4
  %444 = load i8*, i8** %12, align 8
  %445 = getelementptr inbounds i8, i8* %444, i64 7
  store i8 32, i8* %445, align 1
  br label %446

446:                                              ; preds = %442, %435
  %447 = load i8*, i8** %12, align 8
  %448 = load i32, i32* %29, align 4
  %449 = add nsw i32 %448, 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8, i8* %447, i64 %450
  store i8 126, i8* %451, align 1
  %452 = load i32, i32* %27, align 4
  %453 = add nsw i32 49, %452
  %454 = trunc i32 %453 to i8
  %455 = load i8*, i8** %12, align 8
  %456 = load i32, i32* %29, align 4
  %457 = add nsw i32 %456, 5
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8, i8* %455, i64 %458
  store i8 %454, i8* %459, align 1
  br label %460

460:                                              ; preds = %477, %446
  br label %461

461:                                              ; preds = %460
  %462 = getelementptr inbounds [5 x i8], [5 x i8]* %21, i64 0, i64 0
  %463 = load i32, i32* %30, align 4
  %464 = and i32 %463, 65535
  %465 = call i32 @snprintf(i8* %462, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %464)
  %466 = load i8*, i8** %12, align 8
  %467 = load i32, i32* %29, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i8, i8* %466, i64 %468
  %470 = getelementptr inbounds [5 x i8], [5 x i8]* %21, i64 0, i64 0
  %471 = call i32 @memcpy(i8* %469, i8* %470, i32 4)
  %472 = load %struct.inode*, %struct.inode** %8, align 8
  %473 = load i8*, i8** %12, align 8
  %474 = call i64 @vfat_find_form(%struct.inode* %472, i8* %473)
  %475 = icmp slt i64 %474, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %461
  br label %480

477:                                              ; preds = %461
  %478 = load i32, i32* %30, align 4
  %479 = sub nsw i32 %478, 11
  store i32 %479, i32* %30, align 4
  br label %460

480:                                              ; preds = %476
  store i32 0, i32* %7, align 4
  store i32 1, i32* %36, align 4
  br label %481

481:                                              ; preds = %480, %430, %400, %385, %384, %326, %308, %200
  %482 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %482)
  %483 = load i32, i32* %7, align 4
  ret i32 %483
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @INIT_SHORTNAME_INFO(%struct.shortname_info*) #1

declare dso_local i32 @vfat_skip_char(i32) #1

declare dso_local i32 @to_shortname_char(%struct.nls_table*, i8*, i32, i32*, %struct.shortname_info*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @vfat_find_form(%struct.inode*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
