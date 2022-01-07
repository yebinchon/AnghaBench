; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_printf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@BUILT_IN_PRINTF_CHK = common dso_local global i32 0, align 4
@BUILT_IN_VPRINTF_CHK = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i64 0, align 8
@BUILT_IN_PRINTF_UNLOCKED = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_PUTCHAR_UNLOCKED = common dso_local global i64 0, align 8
@BUILT_IN_PUTS_UNLOCKED = common dso_local global i64 0, align 8
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_PUTCHAR = common dso_local global i64 0, align 8
@BUILT_IN_PUTS = common dso_local global i64 0, align 8
@target_percent_s = common dso_local global i32 0, align 4
@target_percent = common dso_local global i32 0, align 4
@BUILT_IN_VPRINTF = common dso_local global i32 0, align 4
@target_newline = common dso_local global i8 0, align 1
@target_percent_s_newline = common dso_local global i32 0, align 4
@target_percent_c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32)* @fold_builtin_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_printf(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i64, i64* @NULL_TREE, align 8
  store i64 %21, i64* %11, align 8
  store i8* null, i8** %16, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %289

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BUILT_IN_PRINTF_CHK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BUILT_IN_VPRINTF_CHK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i64 0, i64* %5, align 8
  br label %289

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @TREE_VALUE(i64 %38)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %17, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @INTEGER_TYPE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %17, align 8
  %47 = call i64 @TREE_SIDE_EFFECTS(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %37
  store i64 0, i64* %5, align 8
  br label %289

50:                                               ; preds = %45
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @TREE_CHAIN(i64 %51)
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %50, %29
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i64 0, i64* %5, align 8
  br label %289

57:                                               ; preds = %53
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @TREE_VALUE(i64 %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @TREE_TYPE(i64 %60)
  %62 = call i32 @POINTER_TYPE_P(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i64 0, i64* %5, align 8
  br label %289

65:                                               ; preds = %57
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @TREE_CHAIN(i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i8* @c_getstr(i64 %68)
  store i8* %69, i8** %16, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i64, i64* @NULL_TREE, align 8
  store i64 %73, i64* %5, align 8
  br label %289

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @BUILT_IN_PRINTF_UNLOCKED, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i64*, i64** @built_in_decls, align 8
  %80 = load i64, i64* @BUILT_IN_PUTCHAR_UNLOCKED, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  %83 = load i64*, i64** @built_in_decls, align 8
  %84 = load i64, i64* @BUILT_IN_PUTS_UNLOCKED, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  br label %96

87:                                               ; preds = %74
  %88 = load i64*, i64** @implicit_built_in_decls, align 8
  %89 = load i64, i64* @BUILT_IN_PUTCHAR, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %12, align 8
  %92 = load i64*, i64** @implicit_built_in_decls, align 8
  %93 = load i64, i64* @BUILT_IN_PUTS, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %13, align 8
  br label %96

96:                                               ; preds = %87, %78
  %97 = call i32 (...) @init_target_chars()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i64 0, i64* %5, align 8
  br label %289

100:                                              ; preds = %96
  %101 = load i8*, i8** %16, align 8
  %102 = load i32, i32* @target_percent_s, align 4
  %103 = call i64 @strcmp(i8* %101, i32 %102)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %16, align 8
  %107 = load i32, i32* @target_percent, align 4
  %108 = call i32* @strchr(i8* %106, i32 %107)
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %221

110:                                              ; preds = %105, %100
  %111 = load i8*, i8** %16, align 8
  %112 = load i32, i32* @target_percent_s, align 4
  %113 = call i64 @strcmp(i8* %111, i32 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %110
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @BUILT_IN_VPRINTF, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @BUILT_IN_VPRINTF_CHK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %115
  store i64 0, i64* %5, align 8
  br label %289

124:                                              ; preds = %119
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i64, i64* %7, align 8
  %129 = call i64 @TREE_VALUE(i64 %128)
  %130 = call i64 @TREE_TYPE(i64 %129)
  %131 = call i32 @POINTER_TYPE_P(i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i64, i64* %7, align 8
  %135 = call i64 @TREE_CHAIN(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133, %127, %124
  store i64 0, i64* %5, align 8
  br label %289

138:                                              ; preds = %133
  %139 = load i64, i64* %7, align 8
  %140 = call i64 @TREE_VALUE(i64 %139)
  %141 = call i8* @c_getstr(i64 %140)
  store i8* %141, i8** %18, align 8
  %142 = load i8*, i8** %18, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  store i64 0, i64* %5, align 8
  br label %289

145:                                              ; preds = %138
  br label %160

146:                                              ; preds = %110
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @BUILT_IN_VPRINTF, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @BUILT_IN_VPRINTF_CHK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i64, i64* %7, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i64 0, i64* %5, align 8
  br label %289

158:                                              ; preds = %154, %150, %146
  %159 = load i8*, i8** %16, align 8
  store i8* %159, i8** %18, align 8
  br label %160

160:                                              ; preds = %158, %145
  %161 = load i8*, i8** %18, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @TREE_TYPE(i64 %167)
  %169 = call i64 @TREE_TYPE(i64 %168)
  %170 = call i64 @build_int_cst(i64 %169, i8 signext 0)
  store i64 %170, i64* %5, align 8
  br label %289

171:                                              ; preds = %160
  %172 = load i8*, i8** %18, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %171
  %178 = load i64, i64* @NULL_TREE, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = call i64 @build_int_cst(i64 %178, i8 signext %181)
  store i64 %182, i64* %14, align 8
  %183 = load i64, i64* @NULL_TREE, align 8
  %184 = load i64, i64* %14, align 8
  %185 = call i64 @build_tree_list(i64 %183, i64 %184)
  store i64 %185, i64* %7, align 8
  %186 = load i64, i64* %12, align 8
  store i64 %186, i64* %11, align 8
  br label %220

187:                                              ; preds = %171
  %188 = load i8*, i8** %18, align 8
  %189 = call i64 @strlen(i8* %188)
  store i64 %189, i64* %19, align 8
  %190 = load i8*, i8** %18, align 8
  %191 = load i64, i64* %19, align 8
  %192 = sub i64 %191, 1
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* @target_newline, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %218

199:                                              ; preds = %187
  %200 = load i64, i64* %19, align 8
  %201 = call i8* @alloca(i64 %200)
  store i8* %201, i8** %20, align 8
  %202 = load i8*, i8** %20, align 8
  %203 = load i8*, i8** %18, align 8
  %204 = load i64, i64* %19, align 8
  %205 = sub i64 %204, 1
  %206 = call i32 @memcpy(i8* %202, i8* %203, i64 %205)
  %207 = load i8*, i8** %20, align 8
  %208 = load i64, i64* %19, align 8
  %209 = sub i64 %208, 1
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  store i8 0, i8* %210, align 1
  %211 = load i64, i64* %19, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = call i64 @build_string_literal(i64 %211, i8* %212)
  store i64 %213, i64* %14, align 8
  %214 = load i64, i64* @NULL_TREE, align 8
  %215 = load i64, i64* %14, align 8
  %216 = call i64 @build_tree_list(i64 %214, i64 %215)
  store i64 %216, i64* %7, align 8
  %217 = load i64, i64* %13, align 8
  store i64 %217, i64* %11, align 8
  br label %219

218:                                              ; preds = %187
  store i64 0, i64* %5, align 8
  br label %289

219:                                              ; preds = %199
  br label %220

220:                                              ; preds = %219, %177
  br label %276

221:                                              ; preds = %105
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* @BUILT_IN_VPRINTF, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @BUILT_IN_VPRINTF_CHK, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %225, %221
  store i64 0, i64* %5, align 8
  br label %289

230:                                              ; preds = %225
  %231 = load i8*, i8** %16, align 8
  %232 = load i32, i32* @target_percent_s_newline, align 4
  %233 = call i64 @strcmp(i8* %231, i32 %232)
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %230
  %236 = load i64, i64* %7, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load i64, i64* %7, align 8
  %240 = call i64 @TREE_VALUE(i64 %239)
  %241 = call i64 @TREE_TYPE(i64 %240)
  %242 = call i32 @POINTER_TYPE_P(i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %238
  %245 = load i64, i64* %7, align 8
  %246 = call i64 @TREE_CHAIN(i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %244, %238, %235
  store i64 0, i64* %5, align 8
  br label %289

249:                                              ; preds = %244
  %250 = load i64, i64* %13, align 8
  store i64 %250, i64* %11, align 8
  br label %274

251:                                              ; preds = %230
  %252 = load i8*, i8** %16, align 8
  %253 = load i32, i32* @target_percent_c, align 4
  %254 = call i64 @strcmp(i8* %252, i32 %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %273

256:                                              ; preds = %251
  %257 = load i64, i64* %7, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %256
  %260 = load i64, i64* %7, align 8
  %261 = call i64 @TREE_VALUE(i64 %260)
  %262 = call i64 @TREE_TYPE(i64 %261)
  %263 = call i64 @TREE_CODE(i64 %262)
  %264 = load i64, i64* @INTEGER_TYPE, align 8
  %265 = icmp ne i64 %263, %264
  br i1 %265, label %270, label %266

266:                                              ; preds = %259
  %267 = load i64, i64* %7, align 8
  %268 = call i64 @TREE_CHAIN(i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266, %259, %256
  store i64 0, i64* %5, align 8
  br label %289

271:                                              ; preds = %266
  %272 = load i64, i64* %12, align 8
  store i64 %272, i64* %11, align 8
  br label %273

273:                                              ; preds = %271, %251
  br label %274

274:                                              ; preds = %273, %249
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275, %220
  %277 = load i64, i64* %11, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  store i64 0, i64* %5, align 8
  br label %289

280:                                              ; preds = %276
  %281 = load i64, i64* %11, align 8
  %282 = load i64, i64* %7, align 8
  %283 = call i64 @build_function_call_expr(i64 %281, i64 %282)
  store i64 %283, i64* %15, align 8
  %284 = load i64, i64* %6, align 8
  %285 = call i64 @TREE_TYPE(i64 %284)
  %286 = call i64 @TREE_TYPE(i64 %285)
  %287 = load i64, i64* %15, align 8
  %288 = call i64 @fold_convert(i64 %286, i64 %287)
  store i64 %288, i64* %5, align 8
  br label %289

289:                                              ; preds = %280, %279, %270, %248, %229, %218, %166, %157, %144, %137, %123, %99, %72, %64, %56, %49, %36, %24
  %290 = load i64, i64* %5, align 8
  ret i64 %290
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @build_int_cst(i64, i8 signext) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @build_string_literal(i64, i8*) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
