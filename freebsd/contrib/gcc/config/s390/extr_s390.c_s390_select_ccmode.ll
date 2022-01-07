; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_select_ccmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_select_ccmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NEG = common dso_local global i32 0, align 4
@ABS = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i32 0, align 4
@CCAPmode = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@CCLmode = common dso_local global i32 0, align 4
@AND = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@CCTmode = common dso_local global i32 0, align 4
@CCZmode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@CCT3mode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@CCANmode = common dso_local global i32 0, align 4
@SIGN_EXTEND = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i32 0, align 4
@CCSRmode = common dso_local global i32 0, align 4
@CCSmode = common dso_local global i32 0, align 4
@CCL1mode = common dso_local global i32 0, align 4
@CCURmode = common dso_local global i32 0, align 4
@CCUmode = common dso_local global i32 0, align 4
@CCL2mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_select_ccmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %264 [
    i32 145, label %10
    i32 135, label %10
    i32 140, label %136
    i32 138, label %136
    i32 144, label %136
    i32 142, label %136
    i32 128, label %181
    i32 134, label %181
    i32 133, label %181
    i32 130, label %181
    i32 129, label %181
    i32 132, label %181
    i32 131, label %181
    i32 137, label %181
    i32 136, label %200
    i32 143, label %200
    i32 139, label %232
    i32 141, label %232
  ]

10:                                               ; preds = %3, %3
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  %13 = load i32, i32* @NEG, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @ABS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %10
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GET_MODE(i32 %21)
  %23 = call i32 @GET_MODE_CLASS(i32 %22)
  %24 = load i32, i32* @MODE_INT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CCAPmode, align 4
  store i32 %27, i32* %4, align 4
  br label %266

28:                                               ; preds = %20, %15
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @GET_CODE(i32 %29)
  %31 = load i32, i32* @PLUS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @XEXP(i32 %34, i32 1)
  %36 = call i32 @GET_CODE(i32 %35)
  %37 = load i32, i32* @CONST_INT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @XEXP(i32 %40, i32 1)
  %42 = call i32 @INTVAL(i32 %41)
  %43 = call i32 @CONST_OK_FOR_K(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @CCAPmode, align 4
  store i32 %46, i32* %4, align 4
  br label %266

47:                                               ; preds = %39, %33, %28
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @GET_CODE(i32 %48)
  %50 = load i32, i32* @PLUS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @GET_CODE(i32 %53)
  %55 = load i32, i32* @MINUS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @GET_CODE(i32 %58)
  %60 = load i32, i32* @NEG, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %57, %52, %47
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @GET_MODE(i32 %63)
  %65 = call i32 @GET_MODE_CLASS(i32 %64)
  %66 = load i32, i32* @MODE_INT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @CCLmode, align 4
  store i32 %69, i32* %4, align 4
  br label %266

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @GET_CODE(i32 %71)
  %73 = load i32, i32* @AND, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @XEXP(i32 %76, i32 1)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @s390_tm_ccmode(i32 %77, i32 %78, i32 1)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @VOIDmode, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @CCTmode, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @CCZmode, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %4, align 4
  br label %266

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @HImode, align 4
  %97 = call i32 @register_operand(i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @GET_CODE(i32 %100)
  %102 = load i32, i32* @CONST_INT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @INTVAL(i32 %105)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @INTVAL(i32 %109)
  %111 = icmp eq i32 %110, 65535
  br i1 %111, label %112, label %114

112:                                              ; preds = %108, %104
  %113 = load i32, i32* @CCT3mode, align 4
  store i32 %113, i32* %4, align 4
  br label %266

114:                                              ; preds = %108, %99, %94
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @QImode, align 4
  %117 = call i32 @register_operand(i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @GET_CODE(i32 %120)
  %122 = load i32, i32* @CONST_INT, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @INTVAL(i32 %125)
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @INTVAL(i32 %129)
  %131 = icmp eq i32 %130, 255
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %124
  %133 = load i32, i32* @CCT3mode, align 4
  store i32 %133, i32* %4, align 4
  br label %266

134:                                              ; preds = %128, %119, %114
  %135 = load i32, i32* @CCZmode, align 4
  store i32 %135, i32* %4, align 4
  br label %266

136:                                              ; preds = %3, %3, %3, %3
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @GET_CODE(i32 %137)
  %139 = load i32, i32* @NEG, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @GET_CODE(i32 %142)
  %144 = load i32, i32* @ABS, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %141, %136
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @GET_MODE(i32 %147)
  %149 = call i32 @GET_MODE_CLASS(i32 %148)
  %150 = load i32, i32* @MODE_INT, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @CCAPmode, align 4
  store i32 %153, i32* %4, align 4
  br label %266

154:                                              ; preds = %146, %141
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @GET_CODE(i32 %155)
  %157 = load i32, i32* @PLUS, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @XEXP(i32 %160, i32 1)
  %162 = call i32 @GET_CODE(i32 %161)
  %163 = load i32, i32* @CONST_INT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %180

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @XEXP(i32 %166, i32 1)
  %168 = call i32 @INTVAL(i32 %167)
  %169 = call i32 @CONST_OK_FOR_K(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @XEXP(i32 %172, i32 1)
  %174 = call i32 @INTVAL(i32 %173)
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @CCANmode, align 4
  store i32 %177, i32* %4, align 4
  br label %266

178:                                              ; preds = %171
  %179 = load i32, i32* @CCAPmode, align 4
  store i32 %179, i32* %4, align 4
  br label %266

180:                                              ; preds = %165, %159, %154
  br label %181

181:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %180
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @GET_CODE(i32 %182)
  %184 = load i32, i32* @SIGN_EXTEND, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @GET_CODE(i32 %187)
  %189 = load i32, i32* @ZERO_EXTEND, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %186, %181
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @GET_CODE(i32 %192)
  %194 = load i32, i32* @CONST_INT, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i32, i32* @CCSRmode, align 4
  store i32 %197, i32* %4, align 4
  br label %266

198:                                              ; preds = %191, %186
  %199 = load i32, i32* @CCSmode, align 4
  store i32 %199, i32* %4, align 4
  br label %266

200:                                              ; preds = %3, %3
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @GET_CODE(i32 %201)
  %203 = load i32, i32* @PLUS, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @GET_MODE(i32 %206)
  %208 = call i32 @GET_MODE_CLASS(i32 %207)
  %209 = load i32, i32* @MODE_INT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load i32, i32* @CCL1mode, align 4
  store i32 %212, i32* %4, align 4
  br label %266

213:                                              ; preds = %205, %200
  %214 = load i32, i32* %6, align 4
  %215 = call i32 @GET_CODE(i32 %214)
  %216 = load i32, i32* @SIGN_EXTEND, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load i32, i32* %6, align 4
  %220 = call i32 @GET_CODE(i32 %219)
  %221 = load i32, i32* @ZERO_EXTEND, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %218, %213
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @GET_CODE(i32 %224)
  %226 = load i32, i32* @CONST_INT, align 4
  %227 = icmp ne i32 %225, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* @CCURmode, align 4
  store i32 %229, i32* %4, align 4
  br label %266

230:                                              ; preds = %223, %218
  %231 = load i32, i32* @CCUmode, align 4
  store i32 %231, i32* %4, align 4
  br label %266

232:                                              ; preds = %3, %3
  %233 = load i32, i32* %6, align 4
  %234 = call i32 @GET_CODE(i32 %233)
  %235 = load i32, i32* @MINUS, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load i32, i32* %6, align 4
  %239 = call i32 @GET_MODE(i32 %238)
  %240 = call i32 @GET_MODE_CLASS(i32 %239)
  %241 = load i32, i32* @MODE_INT, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* @CCL2mode, align 4
  store i32 %244, i32* %4, align 4
  br label %266

245:                                              ; preds = %237, %232
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @GET_CODE(i32 %246)
  %248 = load i32, i32* @SIGN_EXTEND, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @GET_CODE(i32 %251)
  %253 = load i32, i32* @ZERO_EXTEND, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %250, %245
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @GET_CODE(i32 %256)
  %258 = load i32, i32* @CONST_INT, align 4
  %259 = icmp ne i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = load i32, i32* @CCURmode, align 4
  store i32 %261, i32* %4, align 4
  br label %266

262:                                              ; preds = %255, %250
  %263 = load i32, i32* @CCUmode, align 4
  store i32 %263, i32* %4, align 4
  br label %266

264:                                              ; preds = %3
  %265 = call i32 (...) @gcc_unreachable()
  br label %266

266:                                              ; preds = %26, %45, %68, %91, %112, %132, %134, %152, %176, %178, %196, %198, %211, %228, %230, %243, %260, %262, %264
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @CONST_OK_FOR_K(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @s390_tm_ccmode(i32, i32, i32) #1

declare dso_local i32 @register_operand(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
