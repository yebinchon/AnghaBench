; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_gen_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_gen_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"NULL_RTX\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"copy_rtx (operand%d)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"operand%d\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gen_rtx_fmt_\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" (GET_CODE (operand%d), \00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"GET_MODE (operand%d)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%smode\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c",\0A\09\09\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c" (GET_CODE (operand%d)\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c", %smode\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"ADDRESS expression code used in named instruction pattern\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"pc_rtx\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"gen_hard_reg_clobber (%smode, %i)\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"cc0_rtx\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"const0_rtx\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"const1_rtx\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"constm1_rtx\00", align 1
@MAX_SAVED_CONST_INT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [42 x i8] c"const_int_rtx[MAX_SAVED_CONST_INT + (%d)]\00", align 1
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"const_true_rtx\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"GEN_INT (\00", align 1
@HOST_WIDE_INT_PRINT_DEC_C = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"gen_rtx_\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c" (%smode\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c",\0A\09\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"gen_rtvec (%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i8*)* @gen_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_exp(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %294

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %212 [
    i32 134, label %20
    i32 135, label %20
    i32 132, label %45
    i32 133, label %92
    i32 131, label %129
    i32 130, label %129
    i32 129, label %133
    i32 140, label %137
    i32 128, label %139
    i32 138, label %141
    i32 139, label %156
    i32 136, label %158
    i32 137, label %210
  ]

20:                                               ; preds = %16, %16
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @XINT(i64 %25, i32 0)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @XINT(i64 %32, i32 0)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %294

35:                                               ; preds = %23
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @XINT(i64 %37, i32 0)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8 1, i8* %40, align 1
  br label %41

41:                                               ; preds = %35, %20
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @XINT(i64 %42, i32 0)
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %294

45:                                               ; preds = %16
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %54, %45
  %48 = load i32, i32* %8, align 4
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @XVECLEN(i64 %49, i32 1)
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %47

57:                                               ; preds = %47
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @XINT(i64 %58, i32 0)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @GET_MODE(i64 %61)
  %63 = load i32, i32* @VOIDmode, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @XINT(i64 %66, i32 0)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  br label %74

69:                                               ; preds = %57
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @GET_MODE(i64 %70)
  %72 = call i8* @GET_MODE_NAME(i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %69, %65
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @XVECLEN(i64 %77, i32 1)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @XVECEXP(i64 %82, i32 1, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i8*, i8** %6, align 8
  call void @gen_exp(i64 %84, i32 %85, i8* %86)
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %75

90:                                               ; preds = %75
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %294

92:                                               ; preds = %16
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %101, %92
  %95 = load i32, i32* %8, align 4
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @XVECLEN(i64 %96, i32 2)
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %94

104:                                              ; preds = %94
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @XINT(i64 %105, i32 0)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @GET_MODE(i64 %108)
  %110 = call i8* @GET_MODE_NAME(i32 %109)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %110)
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %124, %104
  %113 = load i32, i32* %8, align 4
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @XVECLEN(i64 %114, i32 2)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %119 = load i64, i64* %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @XVECEXP(i64 %119, i32 2, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = load i8*, i8** %6, align 8
  call void @gen_exp(i64 %121, i32 %122, i8* %123)
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %112

127:                                              ; preds = %112
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %294

129:                                              ; preds = %16, %16
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @XINT(i64 %130, i32 0)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %294

133:                                              ; preds = %16
  %134 = load i64, i64* %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @gen_rtx_scratch(i64 %134, i32 %135)
  br label %294

137:                                              ; preds = %16
  %138 = call i32 @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0))
  br label %139

139:                                              ; preds = %16, %137
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %294

141:                                              ; preds = %16
  %142 = load i64, i64* %4, align 8
  %143 = call i64 @XEXP(i64 %142, i32 0)
  %144 = call i32 @REG_P(i64 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load i64, i64* %4, align 8
  %148 = call i64 @XEXP(i64 %147, i32 0)
  %149 = call i32 @GET_MODE(i64 %148)
  %150 = call i8* @GET_MODE_NAME(i32 %149)
  %151 = load i64, i64* %4, align 8
  %152 = call i64 @XEXP(i64 %151, i32 0)
  %153 = call i32 @REGNO(i64 %152)
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %150, i32 %153)
  br label %294

155:                                              ; preds = %141
  br label %213

156:                                              ; preds = %16
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %294

158:                                              ; preds = %16
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @INTVAL(i64 %159)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  br label %209

164:                                              ; preds = %158
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @INTVAL(i64 %165)
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  br label %208

170:                                              ; preds = %164
  %171 = load i64, i64* %4, align 8
  %172 = call i32 @INTVAL(i64 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %207

176:                                              ; preds = %170
  %177 = load i32, i32* @MAX_SAVED_CONST_INT, align 4
  %178 = sub nsw i32 0, %177
  %179 = load i64, i64* %4, align 8
  %180 = call i32 @INTVAL(i64 %179)
  %181 = icmp sle i32 %178, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = load i64, i64* %4, align 8
  %184 = call i32 @INTVAL(i64 %183)
  %185 = load i32, i32* @MAX_SAVED_CONST_INT, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @INTVAL(i64 %188)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %189)
  br label %206

191:                                              ; preds = %182, %176
  %192 = load i64, i64* %4, align 8
  %193 = call i32 @INTVAL(i64 %192)
  %194 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %205

198:                                              ; preds = %191
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %200 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC_C, align 8
  %201 = load i64, i64* %4, align 8
  %202 = call i32 @INTVAL(i64 %201)
  %203 = call i32 (i8*, ...) @printf(i8* %200, i32 %202)
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %205

205:                                              ; preds = %198, %196
  br label %206

206:                                              ; preds = %205, %187
  br label %207

207:                                              ; preds = %206, %174
  br label %208

208:                                              ; preds = %207, %168
  br label %209

209:                                              ; preds = %208, %162
  br label %294

210:                                              ; preds = %16
  %211 = call i32 (...) @gcc_unreachable()
  br label %212

212:                                              ; preds = %16, %210
  br label %213

213:                                              ; preds = %212, %155
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %215 = load i32, i32* %7, align 4
  %216 = call i32 @print_code(i32 %215)
  %217 = load i64, i64* %4, align 8
  %218 = call i32 @GET_MODE(i64 %217)
  %219 = call i8* @GET_MODE_NAME(i32 %218)
  %220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8* %219)
  %221 = load i32, i32* %7, align 4
  %222 = call i8* @GET_RTX_FORMAT(i32 %221)
  store i8* %222, i8** %10, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @GET_RTX_LENGTH(i32 %223)
  store i32 %224, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %225

225:                                              ; preds = %289, %213
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %292

229:                                              ; preds = %225
  %230 = load i8*, i8** %10, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %235, 48
  br i1 %236, label %237, label %238

237:                                              ; preds = %229
  br label %292

238:                                              ; preds = %229
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %240 = load i8*, i8** %10, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  switch i32 %245, label %286 [
    i32 101, label %246
    i32 117, label %246
    i32 105, label %252
    i32 115, label %257
    i32 69, label %262
  ]

246:                                              ; preds = %238, %238
  %247 = load i64, i64* %4, align 8
  %248 = load i32, i32* %8, align 4
  %249 = call i64 @XEXP(i64 %247, i32 %248)
  %250 = load i32, i32* %5, align 4
  %251 = load i8*, i8** %6, align 8
  call void @gen_exp(i64 %249, i32 %250, i8* %251)
  br label %288

252:                                              ; preds = %238
  %253 = load i64, i64* %4, align 8
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @XINT(i64 %253, i32 %254)
  %256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %255)
  br label %288

257:                                              ; preds = %238
  %258 = load i64, i64* %4, align 8
  %259 = load i32, i32* %8, align 4
  %260 = call i8* @XSTR(i64 %258, i32 %259)
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* %260)
  br label %288

262:                                              ; preds = %238
  %263 = load i64, i64* %4, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @XVECLEN(i64 %263, i32 %264)
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 %265)
  store i32 0, i32* %11, align 4
  br label %267

267:                                              ; preds = %281, %262
  %268 = load i32, i32* %11, align 4
  %269 = load i64, i64* %4, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @XVECLEN(i64 %269, i32 %270)
  %272 = icmp slt i32 %268, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %267
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %275 = load i64, i64* %4, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %11, align 4
  %278 = call i64 @XVECEXP(i64 %275, i32 %276, i32 %277)
  %279 = load i32, i32* %5, align 4
  %280 = load i8*, i8** %6, align 8
  call void @gen_exp(i64 %278, i32 %279, i8* %280)
  br label %281

281:                                              ; preds = %273
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %267

284:                                              ; preds = %267
  %285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %288

286:                                              ; preds = %238
  %287 = call i32 (...) @gcc_unreachable()
  br label %288

288:                                              ; preds = %286, %284, %257, %252, %246
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %8, align 4
  br label %225

292:                                              ; preds = %237, %225
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %209, %156, %146, %139, %133, %129, %127, %90, %41, %31, %14
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @gen_rtx_scratch(i64, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @print_code(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @XSTR(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
