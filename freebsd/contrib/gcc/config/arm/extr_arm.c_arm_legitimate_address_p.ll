; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimate_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_legitimate_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_LDRD = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@TARGET_SOFT_FLOAT = common dso_local global i64 0, align 8
@TARGET_VFP = common dso_local global i64 0, align 8
@POST_INC = common dso_local global i32 0, align 4
@PRE_DEC = common dso_local global i32 0, align 4
@PRE_INC = common dso_local global i32 0, align 4
@POST_DEC = common dso_local global i32 0, align 4
@POST_MODIFY = common dso_local global i32 0, align 4
@PRE_MODIFY = common dso_local global i32 0, align 4
@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i64 0, align 8
@MINUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_legitimate_address_p(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @arm_address_register_rtx_p(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %248

23:                                               ; preds = %4
  %24 = load i64, i64* @TARGET_LDRD, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DImode, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DFmode, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i64, i64* @TARGET_SOFT_FLOAT, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @TARGET_VFP, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ true, %34 ], [ %39, %37 ]
  br label %42

42:                                               ; preds = %40, %30
  %43 = phi i1 [ false, %30 ], [ %41, %40 ]
  br label %44

44:                                               ; preds = %42, %26
  %45 = phi i1 [ true, %26 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %23
  %47 = phi i1 [ false, %23 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @POST_INC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PRE_DEC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %71, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @PRE_INC, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @POST_DEC, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GET_MODE_SIZE(i32 %68)
  %70 = icmp sle i32 %69, 4
  br i1 %70, label %71, label %76

71:                                               ; preds = %67, %64, %52, %46
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @XEXP(i32 %72, i32 0)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @arm_address_register_rtx_p(i32 %73, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %248

76:                                               ; preds = %67, %60
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @POST_MODIFY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @PRE_MODIFY, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %139

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @XEXP(i32 %85, i32 0)
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @arm_address_register_rtx_p(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %139

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @XEXP(i32 %91, i32 1)
  %93 = call i64 @GET_CODE(i32 %92)
  %94 = load i64, i64* @PLUS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @XEXP(i32 %97, i32 1)
  %99 = call i32 @XEXP(i32 %98, i32 0)
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @XEXP(i32 %100, i32 0)
  %102 = call i64 @rtx_equal_p(i32 %99, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %139

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @XEXP(i32 %105, i32 1)
  %107 = call i32 @XEXP(i32 %106, i32 1)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @GET_CODE(i32 %111)
  %113 = load i32, i32* @POST_MODIFY, align 4
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i32, i32* %12, align 4
  %118 = call i64 @GET_CODE(i32 %117)
  %119 = load i64, i64* @REG, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %5, align 4
  br label %248

122:                                              ; preds = %116, %110, %104
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @GET_MODE_SIZE(i32 %126)
  %128 = icmp sle i32 %127, 4
  br i1 %128, label %129, label %136

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @arm_legitimate_index_p(i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %129, %125
  %137 = phi i1 [ false, %125 ], [ %135, %129 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %5, align 4
  br label %248

139:                                              ; preds = %96, %90, %84, %80
  %140 = load i64, i64* @reload_completed, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %172

142:                                              ; preds = %139
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @LABEL_REF, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %171, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @CONST, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @XEXP(i32 %151, i32 0)
  %153 = call i64 @GET_CODE(i32 %152)
  %154 = load i64, i64* @PLUS, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %150
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @XEXP(i32 %157, i32 0)
  %159 = call i32 @XEXP(i32 %158, i32 0)
  %160 = call i64 @GET_CODE(i32 %159)
  %161 = load i32, i32* @LABEL_REF, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp eq i64 %160, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @XEXP(i32 %165, i32 0)
  %167 = call i32 @XEXP(i32 %166, i32 1)
  %168 = call i64 @GET_CODE(i32 %167)
  %169 = load i64, i64* @CONST_INT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %164, %142
  store i32 1, i32* %5, align 4
  br label %248

172:                                              ; preds = %164, %156, %150, %146, %139
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @TImode, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %248

177:                                              ; preds = %172
  %178 = load i32, i32* %11, align 4
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* @PLUS, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %215

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @XEXP(i32 %183, i32 0)
  store i32 %184, i32* %13, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @XEXP(i32 %185, i32 1)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @arm_address_register_rtx_p(i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @arm_legitimate_index_p(i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %212, label %198

198:                                              ; preds = %191, %182
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @arm_address_register_rtx_p(i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @arm_legitimate_index_p(i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br label %210

210:                                              ; preds = %203, %198
  %211 = phi i1 [ false, %198 ], [ %209, %203 ]
  br label %212

212:                                              ; preds = %210, %191
  %213 = phi i1 [ true, %191 ], [ %211, %210 ]
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %5, align 4
  br label %248

215:                                              ; preds = %177
  %216 = load i32, i32* %6, align 4
  %217 = call i64 @GET_MODE_CLASS(i32 %216)
  %218 = load i64, i64* @MODE_FLOAT, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %242

220:                                              ; preds = %215
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @SYMBOL_REF, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %242

224:                                              ; preds = %220
  %225 = load i32, i32* %7, align 4
  %226 = call i64 @CONSTANT_POOL_ADDRESS_P(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load i64, i64* @flag_pic, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %228
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @get_pool_constant(i32 %232)
  %234 = call i64 @symbol_mentioned_p(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %231
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @get_pool_constant(i32 %237)
  %239 = call i32 @pcrel_constant_p(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %236, %231, %228
  store i32 1, i32* %5, align 4
  br label %248

242:                                              ; preds = %236, %224, %220, %215
  br label %243

243:                                              ; preds = %242
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  store i32 0, i32* %5, align 4
  br label %248

248:                                              ; preds = %247, %241, %212, %176, %171, %136, %121, %71, %22
  %249 = load i32, i32* %5, align 4
  ret i32 %249
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @arm_address_register_rtx_p(i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @arm_legitimate_index_p(i32, i32, i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i64 @symbol_mentioned_p(i32) #1

declare dso_local i32 @get_pool_constant(i32) #1

declare dso_local i32 @pcrel_constant_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
