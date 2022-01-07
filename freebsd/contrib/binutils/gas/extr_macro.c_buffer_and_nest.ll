; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_buffer_and_nest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_macro.c_buffer_and_nest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"ENDR\00", align 1
@LABELS_WITHOUT_COLONS = common dso_local global i64 0, align 8
@NO_PSEUDO_DOT = common dso_local global i64 0, align 8
@macro_mri = common dso_local global i64 0, align 8
@flag_m68k_mri = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"IRPC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IRP\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"IREPC\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"IREP\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"REPT\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"REP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buffer_and_nest(i8* %0, i8* %1, %struct.TYPE_6__* %2, i32 (%struct.TYPE_6__*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32 (%struct.TYPE_6__*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 (%struct.TYPE_6__*)* %3, i32 (%struct.TYPE_6__*)** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = call i32 %20(%struct.TYPE_6__* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %5, align 8
  store i32 0, i32* %9, align 4
  br label %33

30:                                               ; preds = %25, %4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %34

34:                                               ; preds = %397, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %407

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i64, i64* @LABELS_WITHOUT_COLONS, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %14, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @ISWHITE(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %48, %42
  %59 = phi i1 [ false, %42 ], [ %57, %48 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %42

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %169, %64
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @is_name_beginner(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %71, %65
  br label %173

82:                                               ; preds = %71
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %103, %82
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @is_part_of_name(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %91, %85
  %102 = phi i1 [ false, %85 ], [ %100, %91 ]
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %85

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = call i64 @is_name_ender(i8 signext %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %112
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %122, %112, %106
  %126 = load i64, i64* @LABELS_WITHOUT_COLONS, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %173

129:                                              ; preds = %125
  br label %130

130:                                              ; preds = %148, %129
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = call i64 @ISWHITE(i8 signext %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %136, %130
  %147 = phi i1 [ false, %130 ], [ %145, %136 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %130

151:                                              ; preds = %146
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %167, label %157

157:                                              ; preds = %151
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 58
  br i1 %166, label %167, label %169

167:                                              ; preds = %157, %151
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %14, align 4
  br label %173

169:                                              ; preds = %157
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %12, align 4
  br label %65

173:                                              ; preds = %167, %128, %81
  br label %174

174:                                              ; preds = %192, %173
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @ISWHITE(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br label %190

190:                                              ; preds = %180, %174
  %191 = phi i1 [ false, %174 ], [ %189, %180 ]
  br i1 %191, label %192, label %195

192:                                              ; preds = %190
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %14, align 4
  br label %174

195:                                              ; preds = %190
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %397

201:                                              ; preds = %195
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 46
  br i1 %210, label %217, label %211

211:                                              ; preds = %201
  %212 = load i64, i64* @NO_PSEUDO_DOT, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load i64, i64* @macro_mri, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %397

217:                                              ; preds = %214, %211, %201
  %218 = load i32, i32* @flag_m68k_mri, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %233, label %220

220:                                              ; preds = %217
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 46
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  br label %233

233:                                              ; preds = %230, %220, %217
  %234 = load i8*, i8** %5, align 8
  %235 = icmp eq i8* %234, null
  br i1 %235, label %236, label %291

236:                                              ; preds = %233
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i32 4, i32* %9, align 4
  %243 = call i64 @strncasecmp(i8* %242, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %291

245:                                              ; preds = %236
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  store i32 3, i32* %9, align 4
  %252 = call i64 @strncasecmp(i8* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %291

254:                                              ; preds = %245
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  store i32 5, i32* %9, align 4
  %261 = call i64 @strncasecmp(i8* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %291

263:                                              ; preds = %254
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %14, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  store i32 4, i32* %9, align 4
  %270 = call i64 @strncasecmp(i8* %269, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %263
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i32 4, i32* %9, align 4
  %279 = call i64 @strncasecmp(i8* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %272
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  store i32 3, i32* %9, align 4
  %288 = call i64 @strncasecmp(i8* %287, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %281
  store i32 0, i32* %9, align 4
  br label %291

291:                                              ; preds = %290, %281, %272, %263, %254, %245, %236, %233
  %292 = load i8*, i8** %5, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 1
  %297 = load i8*, i8** %296, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = load i8*, i8** %5, align 8
  %302 = load i32, i32* %9, align 4
  %303 = call i64 @strncasecmp(i8* %300, i8* %301, i32 %302)
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %308, label %343

305:                                              ; preds = %291
  %306 = load i32, i32* %9, align 4
  %307 = icmp sgt i32 %306, 0
  br i1 %307, label %308, label %343

308:                                              ; preds = %305, %294
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %312, %313
  %315 = icmp eq i32 %311, %314
  br i1 %315, label %340, label %316

316:                                              ; preds = %308
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* %9, align 4
  %322 = add nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %319, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = call i64 @is_part_of_name(i8 signext %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %343, label %328

328:                                              ; preds = %316
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %331, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = call i64 @is_name_ender(i8 signext %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %328, %308
  %341 = load i32, i32* %11, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %11, align 4
  br label %343

343:                                              ; preds = %340, %328, %316, %305, %294
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = load i32, i32* %14, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8*, i8** %6, align 8
  %351 = load i32, i32* %10, align 4
  %352 = call i64 @strncasecmp(i8* %349, i8* %350, i32 %351)
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %396

354:                                              ; preds = %343
  %355 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 %358, %359
  %361 = icmp eq i32 %357, %360
  br i1 %361, label %386, label %362

362:                                              ; preds = %354
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* %14, align 4
  %367 = load i32, i32* %10, align 4
  %368 = add nsw i32 %366, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i8, i8* %365, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = call i64 @is_part_of_name(i8 signext %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %396, label %374

374:                                              ; preds = %362
  %375 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 1
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i8, i8* %377, i64 %381
  %383 = load i8, i8* %382, align 1
  %384 = call i64 @is_name_ender(i8 signext %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %396, label %386

386:                                              ; preds = %374, %354
  %387 = load i32, i32* %11, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %11, align 4
  %389 = load i32, i32* %11, align 4
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %386
  %392 = load i32, i32* %12, align 4
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 0
  store i32 %392, i32* %394, align 8
  br label %407

395:                                              ; preds = %386
  br label %396

396:                                              ; preds = %395, %374, %362, %343
  br label %397

397:                                              ; preds = %396, %214, %195
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %399 = load i32, i32* %13, align 4
  %400 = call i32 @sb_add_char(%struct.TYPE_6__* %398, i32 %399)
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  store i32 %403, i32* %12, align 4
  %404 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %8, align 8
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %406 = call i32 %404(%struct.TYPE_6__* %405)
  store i32 %406, i32* %13, align 4
  br label %34

407:                                              ; preds = %391, %34
  %408 = load i32, i32* %11, align 4
  %409 = icmp eq i32 %408, 0
  %410 = zext i1 %409 to i32
  ret i32 %410
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @ISWHITE(i8 signext) #1

declare dso_local i32 @is_name_beginner(i8 signext) #1

declare dso_local i64 @is_part_of_name(i8 signext) #1

declare dso_local i64 @is_name_ender(i8 signext) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @sb_add_char(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
