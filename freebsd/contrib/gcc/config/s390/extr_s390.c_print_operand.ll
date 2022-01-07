; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s390_address = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c":tls_load:\00", align 1
@UNSPEC = common dso_local global i32 0, align 4
@UNSPEC_TLSGD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c":tls_gdcall:\00", align 1
@UNSPEC_TLSLDM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c":tls_ldcall:\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@reg_names = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@VOIDmode = common dso_local global i32 0, align 4
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@HImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"UNKNOWN in print_operand !?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_operand(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_address, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s390_address, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.s390_address, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %281 [
    i32 67, label %14
    i32 68, label %20
    i32 74, label %26
    i32 71, label %74
    i32 79, label %80
    i32 82, label %122
    i32 83, label %168
    i32 78, label %223
    i32 77, label %250
    i32 89, label %277
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = call i8* @s390_branch_condition_mnemonic(i32 %16, i32 %17)
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* %18)
  br label %441

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i8* @s390_branch_condition_mnemonic(i32 %22, i32 %23)
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* %24)
  br label %441

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @GET_CODE(i32 %27)
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @output_addr_const(i32* %33, i32 %34)
  br label %73

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @GET_CODE(i32 %37)
  %39 = load i32, i32* @UNSPEC, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @XINT(i32 %42, i32 1)
  %44 = load i32, i32* @UNSPEC_TLSGD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @XVECEXP(i32 %50, i32 0, i32 0)
  %52 = call i32 @output_addr_const(i32* %49, i32 %51)
  br label %72

53:                                               ; preds = %41, %36
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @GET_CODE(i32 %54)
  %56 = load i32, i32* @UNSPEC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @XINT(i32 %59, i32 1)
  %61 = load i32, i32* @UNSPEC_TLSLDM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 (...) @get_some_local_dynamic_name()
  %68 = call i32 @assemble_name(i32* %66, i32 %67)
  br label %71

69:                                               ; preds = %58, %53
  %70 = call i32 (...) @gcc_unreachable()
  br label %71

71:                                               ; preds = %69, %63
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %30
  br label %441

74:                                               ; preds = %3
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @GET_MODE(i32 %76)
  %78 = call i32 @GET_MODE_SIZE(i32 %77)
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %441

80:                                               ; preds = %3
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @GET_CODE(i32 %81)
  %83 = icmp eq i32 %82, 130
  %84 = zext i1 %83 to i32
  %85 = call i32 @gcc_assert(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @XEXP(i32 %86, i32 0)
  %88 = call i32 @s390_decompose_address(i32 %87, %struct.s390_address* %7)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @gcc_assert(i32 %89)
  %91 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %80
  %95 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %7, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @REGNO(i32 %96)
  %98 = call i32 @REGNO_OK_FOR_BASE_P(i64 %97)
  %99 = icmp ne i32 %98, 0
  br label %100

100:                                              ; preds = %94, %80
  %101 = phi i1 [ true, %80 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @gcc_assert(i32 %102)
  %104 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %7, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %100
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %7, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @output_addr_const(i32* %114, i32 %116)
  br label %121

118:                                              ; preds = %100
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  br label %441

122:                                              ; preds = %3
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @GET_CODE(i32 %123)
  %125 = icmp eq i32 %124, 130
  %126 = zext i1 %125 to i32
  %127 = call i32 @gcc_assert(i32 %126)
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @XEXP(i32 %128, i32 0)
  %130 = call i32 @s390_decompose_address(i32 %129, %struct.s390_address* %9)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @gcc_assert(i32 %131)
  %133 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %9, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %122
  %137 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %9, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @REGNO(i32 %138)
  %140 = call i32 @REGNO_OK_FOR_BASE_P(i64 %139)
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %136, %122
  %143 = phi i1 [ true, %122 ], [ %141, %136 ]
  %144 = zext i1 %143 to i32
  %145 = call i32 @gcc_assert(i32 %144)
  %146 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %9, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = zext i1 %149 to i32
  %151 = call i32 @gcc_assert(i32 %150)
  %152 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %9, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %142
  %156 = load i32*, i32** %4, align 8
  %157 = load i8**, i8*** @reg_names, align 8
  %158 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %9, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @REGNO(i32 %159)
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %162)
  br label %167

164:                                              ; preds = %142
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %155
  br label %441

168:                                              ; preds = %3
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @GET_CODE(i32 %169)
  %171 = icmp eq i32 %170, 130
  %172 = zext i1 %171 to i32
  %173 = call i32 @gcc_assert(i32 %172)
  %174 = load i32, i32* %5, align 4
  %175 = call i32 @XEXP(i32 %174, i32 0)
  %176 = call i32 @s390_decompose_address(i32 %175, %struct.s390_address* %11)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @gcc_assert(i32 %177)
  %179 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @REGNO(i32 %184)
  %186 = call i32 @REGNO_OK_FOR_BASE_P(i64 %185)
  %187 = icmp ne i32 %186, 0
  br label %188

188:                                              ; preds = %182, %168
  %189 = phi i1 [ true, %168 ], [ %187, %182 ]
  %190 = zext i1 %189 to i32
  %191 = call i32 @gcc_assert(i32 %190)
  %192 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @gcc_assert(i32 %196)
  %198 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %188
  %202 = load i32*, i32** %4, align 8
  %203 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @output_addr_const(i32* %202, i32 %204)
  br label %209

206:                                              ; preds = %188
  %207 = load i32*, i32** %4, align 8
  %208 = call i32 (i32*, i8*, ...) @fprintf(i32* %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %201
  %210 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %209
  %214 = load i32*, i32** %4, align 8
  %215 = load i8**, i8*** @reg_names, align 8
  %216 = getelementptr inbounds %struct.s390_address, %struct.s390_address* %11, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @REGNO(i32 %217)
  %219 = getelementptr inbounds i8*, i8** %215, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %220)
  br label %222

222:                                              ; preds = %213, %209
  br label %441

223:                                              ; preds = %3
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @GET_CODE(i32 %224)
  %226 = icmp eq i32 %225, 129
  br i1 %226, label %227, label %235

227:                                              ; preds = %223
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @GET_MODE(i32 %228)
  %230 = load i32, i32* %5, align 4
  %231 = call i64 @REGNO(i32 %230)
  %232 = add i64 %231, 1
  %233 = trunc i64 %232 to i32
  %234 = call i32 @gen_rtx_REG(i32 %229, i32 %233)
  store i32 %234, i32* %5, align 4
  br label %249

235:                                              ; preds = %223
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @GET_CODE(i32 %236)
  %238 = icmp eq i32 %237, 130
  br i1 %238, label %239, label %246

239:                                              ; preds = %235
  %240 = load i32, i32* %5, align 4
  %241 = load i32, i32* @VOIDmode, align 4
  %242 = load i32, i32* %5, align 4
  %243 = call i32 @XEXP(i32 %242, i32 0)
  %244 = call i32 @plus_constant(i32 %243, i32 4)
  %245 = call i32 @change_address(i32 %240, i32 %241, i32 %244)
  store i32 %245, i32* %5, align 4
  br label %248

246:                                              ; preds = %235
  %247 = call i32 (...) @gcc_unreachable()
  br label %248

248:                                              ; preds = %246, %239
  br label %249

249:                                              ; preds = %248, %227
  br label %281

250:                                              ; preds = %3
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @GET_CODE(i32 %251)
  %253 = icmp eq i32 %252, 129
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = load i32, i32* %5, align 4
  %256 = call i32 @GET_MODE(i32 %255)
  %257 = load i32, i32* %5, align 4
  %258 = call i64 @REGNO(i32 %257)
  %259 = add i64 %258, 1
  %260 = trunc i64 %259 to i32
  %261 = call i32 @gen_rtx_REG(i32 %256, i32 %260)
  store i32 %261, i32* %5, align 4
  br label %276

262:                                              ; preds = %250
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @GET_CODE(i32 %263)
  %265 = icmp eq i32 %264, 130
  br i1 %265, label %266, label %273

266:                                              ; preds = %262
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* @VOIDmode, align 4
  %269 = load i32, i32* %5, align 4
  %270 = call i32 @XEXP(i32 %269, i32 0)
  %271 = call i32 @plus_constant(i32 %270, i32 8)
  %272 = call i32 @change_address(i32 %267, i32 %268, i32 %271)
  store i32 %272, i32* %5, align 4
  br label %275

273:                                              ; preds = %262
  %274 = call i32 (...) @gcc_unreachable()
  br label %275

275:                                              ; preds = %273, %266
  br label %276

276:                                              ; preds = %275, %254
  br label %281

277:                                              ; preds = %3
  %278 = load i32*, i32** %4, align 8
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @print_shift_count_operand(i32* %278, i32 %279)
  br label %441

281:                                              ; preds = %3, %276, %249
  %282 = load i32, i32* %5, align 4
  %283 = call i32 @GET_CODE(i32 %282)
  switch i32 %283, label %438 [
    i32 129, label %284
    i32 130, label %292
    i32 134, label %296
    i32 135, label %296
    i32 131, label %296
    i32 128, label %296
    i32 132, label %300
    i32 133, label %395
  ]

284:                                              ; preds = %281
  %285 = load i32*, i32** %4, align 8
  %286 = load i8**, i8*** @reg_names, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i64 @REGNO(i32 %287)
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 (i32*, i8*, ...) @fprintf(i32* %285, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %290)
  br label %441

292:                                              ; preds = %281
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @XEXP(i32 %293, i32 0)
  %295 = call i32 @output_address(i32 %294)
  br label %441

296:                                              ; preds = %281, %281, %281, %281
  %297 = load i32*, i32** %4, align 8
  %298 = load i32, i32* %5, align 4
  %299 = call i32 @output_addr_const(i32* %297, i32 %298)
  br label %441

300:                                              ; preds = %281
  %301 = load i32, i32* %6, align 4
  %302 = icmp eq i32 %301, 98
  br i1 %302, label %303, label %310

303:                                              ; preds = %300
  %304 = load i32*, i32** %4, align 8
  %305 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @INTVAL(i32 %306)
  %308 = and i32 %307, 255
  %309 = call i32 (i32*, i8*, ...) @fprintf(i32* %304, i8* %305, i32 %308)
  br label %394

310:                                              ; preds = %300
  %311 = load i32, i32* %6, align 4
  %312 = icmp eq i32 %311, 120
  br i1 %312, label %313, label %320

313:                                              ; preds = %310
  %314 = load i32*, i32** %4, align 8
  %315 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %316 = load i32, i32* %5, align 4
  %317 = call i32 @INTVAL(i32 %316)
  %318 = and i32 %317, 65535
  %319 = call i32 (i32*, i8*, ...) @fprintf(i32* %314, i8* %315, i32 %318)
  br label %393

320:                                              ; preds = %310
  %321 = load i32, i32* %6, align 4
  %322 = icmp eq i32 %321, 104
  br i1 %322, label %323, label %332

323:                                              ; preds = %320
  %324 = load i32*, i32** %4, align 8
  %325 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %326 = load i32, i32* %5, align 4
  %327 = call i32 @INTVAL(i32 %326)
  %328 = and i32 %327, 65535
  %329 = xor i32 %328, 32768
  %330 = sub nsw i32 %329, 32768
  %331 = call i32 (i32*, i8*, ...) @fprintf(i32* %324, i8* %325, i32 %330)
  br label %392

332:                                              ; preds = %320
  %333 = load i32, i32* %6, align 4
  %334 = icmp eq i32 %333, 105
  br i1 %334, label %335, label %342

335:                                              ; preds = %332
  %336 = load i32*, i32** %4, align 8
  %337 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %338 = load i32, i32* %5, align 4
  %339 = load i32, i32* @HImode, align 4
  %340 = call i32 @s390_extract_part(i32 %338, i32 %339, i32 0)
  %341 = call i32 (i32*, i8*, ...) @fprintf(i32* %336, i8* %337, i32 %340)
  br label %391

342:                                              ; preds = %332
  %343 = load i32, i32* %6, align 4
  %344 = icmp eq i32 %343, 106
  br i1 %344, label %345, label %352

345:                                              ; preds = %342
  %346 = load i32*, i32** %4, align 8
  %347 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* @HImode, align 4
  %350 = call i32 @s390_extract_part(i32 %348, i32 %349, i32 -1)
  %351 = call i32 (i32*, i8*, ...) @fprintf(i32* %346, i8* %347, i32 %350)
  br label %390

352:                                              ; preds = %342
  %353 = load i32, i32* %6, align 4
  %354 = icmp eq i32 %353, 107
  br i1 %354, label %355, label %362

355:                                              ; preds = %352
  %356 = load i32*, i32** %4, align 8
  %357 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %358 = load i32, i32* %5, align 4
  %359 = load i32, i32* @SImode, align 4
  %360 = call i32 @s390_extract_part(i32 %358, i32 %359, i32 0)
  %361 = call i32 (i32*, i8*, ...) @fprintf(i32* %356, i8* %357, i32 %360)
  br label %389

362:                                              ; preds = %352
  %363 = load i32, i32* %6, align 4
  %364 = icmp eq i32 %363, 109
  br i1 %364, label %365, label %372

365:                                              ; preds = %362
  %366 = load i32*, i32** %4, align 8
  %367 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %368 = load i32, i32* %5, align 4
  %369 = load i32, i32* @SImode, align 4
  %370 = call i32 @s390_extract_part(i32 %368, i32 %369, i32 -1)
  %371 = call i32 (i32*, i8*, ...) @fprintf(i32* %366, i8* %367, i32 %370)
  br label %388

372:                                              ; preds = %362
  %373 = load i32, i32* %6, align 4
  %374 = icmp eq i32 %373, 111
  br i1 %374, label %375, label %381

375:                                              ; preds = %372
  %376 = load i32*, i32** %4, align 8
  %377 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %378 = load i32, i32* %5, align 4
  %379 = call i32 @INTVAL(i32 %378)
  %380 = call i32 (i32*, i8*, ...) @fprintf(i32* %376, i8* %377, i32 %379)
  br label %387

381:                                              ; preds = %372
  %382 = load i32*, i32** %4, align 8
  %383 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %384 = load i32, i32* %5, align 4
  %385 = call i32 @INTVAL(i32 %384)
  %386 = call i32 (i32*, i8*, ...) @fprintf(i32* %382, i8* %383, i32 %385)
  br label %387

387:                                              ; preds = %381, %375
  br label %388

388:                                              ; preds = %387, %365
  br label %389

389:                                              ; preds = %388, %355
  br label %390

390:                                              ; preds = %389, %345
  br label %391

391:                                              ; preds = %390, %335
  br label %392

392:                                              ; preds = %391, %323
  br label %393

393:                                              ; preds = %392, %313
  br label %394

394:                                              ; preds = %393, %303
  br label %441

395:                                              ; preds = %281
  %396 = load i32, i32* %5, align 4
  %397 = call i32 @GET_MODE(i32 %396)
  %398 = load i32, i32* @VOIDmode, align 4
  %399 = icmp eq i32 %397, %398
  %400 = zext i1 %399 to i32
  %401 = call i32 @gcc_assert(i32 %400)
  %402 = load i32, i32* %6, align 4
  %403 = icmp eq i32 %402, 98
  br i1 %403, label %404, label %411

404:                                              ; preds = %395
  %405 = load i32*, i32** %4, align 8
  %406 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %407 = load i32, i32* %5, align 4
  %408 = call i32 @CONST_DOUBLE_LOW(i32 %407)
  %409 = and i32 %408, 255
  %410 = call i32 (i32*, i8*, ...) @fprintf(i32* %405, i8* %406, i32 %409)
  br label %437

411:                                              ; preds = %395
  %412 = load i32, i32* %6, align 4
  %413 = icmp eq i32 %412, 120
  br i1 %413, label %414, label %421

414:                                              ; preds = %411
  %415 = load i32*, i32** %4, align 8
  %416 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %417 = load i32, i32* %5, align 4
  %418 = call i32 @CONST_DOUBLE_LOW(i32 %417)
  %419 = and i32 %418, 65535
  %420 = call i32 (i32*, i8*, ...) @fprintf(i32* %415, i8* %416, i32 %419)
  br label %436

421:                                              ; preds = %411
  %422 = load i32, i32* %6, align 4
  %423 = icmp eq i32 %422, 104
  br i1 %423, label %424, label %433

424:                                              ; preds = %421
  %425 = load i32*, i32** %4, align 8
  %426 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %427 = load i32, i32* %5, align 4
  %428 = call i32 @CONST_DOUBLE_LOW(i32 %427)
  %429 = and i32 %428, 65535
  %430 = xor i32 %429, 32768
  %431 = sub nsw i32 %430, 32768
  %432 = call i32 (i32*, i8*, ...) @fprintf(i32* %425, i8* %426, i32 %431)
  br label %435

433:                                              ; preds = %421
  %434 = call i32 (...) @gcc_unreachable()
  br label %435

435:                                              ; preds = %433, %424
  br label %436

436:                                              ; preds = %435, %414
  br label %437

437:                                              ; preds = %436, %404
  br label %441

438:                                              ; preds = %281
  %439 = load i32, i32* %5, align 4
  %440 = call i32 @fatal_insn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %439)
  br label %441

441:                                              ; preds = %14, %20, %73, %74, %121, %167, %222, %277, %438, %437, %394, %296, %292, %284
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @s390_branch_condition_mnemonic(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @output_addr_const(i32*, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @assemble_name(i32*, i32) #1

declare dso_local i32 @get_some_local_dynamic_name(...) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @s390_decompose_address(i32, %struct.s390_address*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO_OK_FOR_BASE_P(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @change_address(i32, i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @print_shift_count_operand(i32*, i32) #1

declare dso_local i32 @output_address(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @s390_extract_part(i32, i32, i32) #1

declare dso_local i32 @CONST_DOUBLE_LOW(i32) #1

declare dso_local i32 @fatal_insn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
