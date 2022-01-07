; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_find_comparison_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_find_comparison_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table_elt = type { i64, %struct.table_elt*, i64, %struct.table_elt* }

@COMPARE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@NE = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@LT = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*, i32*, i32*)* @find_comparison_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_comparison_args(i32 %0, i64* %1, i64* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.table_elt*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  br label %22

22:                                               ; preds = %250, %5
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @GET_MODE(i64 %24)
  %26 = call i64 @CONST0_RTX(i32 %25)
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %255

28:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store %struct.table_elt* null, %struct.table_elt** %15, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @GET_CODE(i64 %29)
  %31 = load i64, i64* @COMPARE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @const0_rtx, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %13, align 8
  br label %84

39:                                               ; preds = %33, %28
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @COMPARISON_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @NE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @GET_MODE(i64 %48)
  %50 = call i64 @GET_MODE_CLASS(i32 %49)
  %51 = load i64, i64* @MODE_INT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @LT, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %57, %43
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %13, align 8
  br label %82

62:                                               ; preds = %57, %53, %47
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @EQ, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %79, label %66

66:                                               ; preds = %62
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @GET_MODE(i64 %67)
  %69 = call i64 @GET_MODE_CLASS(i32 %68)
  %70 = load i64, i64* @MODE_INT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %62
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %13, align 8
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %79, %76, %72, %66
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83, %37
  %85 = load i64, i64* %13, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @GET_MODE(i64 %90)
  %92 = call i32 @SAFE_HASH(i64 %89, i32 %91)
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @GET_MODE(i64 %93)
  %95 = call %struct.table_elt* @lookup(i64 %88, i32 %92, i32 %94)
  store %struct.table_elt* %95, %struct.table_elt** %15, align 8
  br label %96

96:                                               ; preds = %87, %84
  %97 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %98 = icmp ne %struct.table_elt* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %101 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %100, i32 0, i32 3
  %102 = load %struct.table_elt*, %struct.table_elt** %101, align 8
  store %struct.table_elt* %102, %struct.table_elt** %15, align 8
  %103 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %104 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %255

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %96
  br label %110

110:                                              ; preds = %219, %109
  %111 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %112 = icmp ne %struct.table_elt* %111, null
  br i1 %112, label %113, label %223

113:                                              ; preds = %110
  %114 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %115 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @GET_MODE(i64 %116)
  store i32 %117, i32* %16, align 4
  %118 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %119 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %122 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @exp_equiv_p(i64 %120, i64 %123, i32 1, i32 0)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %113
  br label %219

127:                                              ; preds = %113
  %128 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %129 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @GET_CODE(i64 %130)
  %132 = load i64, i64* @COMPARE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %166, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @NE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %160, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @LT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = call i64 @GET_MODE_CLASS(i32 %143)
  %145 = load i64, i64* @MODE_INT, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %170

147:                                              ; preds = %142
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @GET_MODE_BITSIZE(i32 %148)
  %150 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @GET_MODE_BITSIZE(i32 %154)
  %156 = sub nsw i32 %155, 1
  %157 = shl i32 1, %156
  %158 = and i32 %153, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %152, %134
  %161 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %162 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @COMPARISON_P(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160, %127
  %167 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %168 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %13, align 8
  br label %223

170:                                              ; preds = %160, %152, %147, %142, %138
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @EQ, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %196, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @GE, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %206

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = call i64 @GET_MODE_CLASS(i32 %179)
  %181 = load i64, i64* @MODE_INT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %206

183:                                              ; preds = %178
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @GET_MODE_BITSIZE(i32 %184)
  %186 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @GET_MODE_BITSIZE(i32 %190)
  %192 = sub nsw i32 %191, 1
  %193 = shl i32 1, %192
  %194 = and i32 %189, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %188, %170
  %197 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %198 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @COMPARISON_P(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  store i32 1, i32* %14, align 4
  %203 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %204 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %13, align 8
  br label %223

206:                                              ; preds = %196, %188, %183, %178, %174
  %207 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %208 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @rtx_addr_can_trap_p(i64 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %206
  %213 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %214 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  store i64 %215, i64* %11, align 8
  br label %219

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218, %212, %126
  %220 = load %struct.table_elt*, %struct.table_elt** %15, align 8
  %221 = getelementptr inbounds %struct.table_elt, %struct.table_elt* %220, i32 0, i32 1
  %222 = load %struct.table_elt*, %struct.table_elt** %221, align 8
  store %struct.table_elt* %222, %struct.table_elt** %15, align 8
  br label %110

223:                                              ; preds = %202, %166, %110
  %224 = load i64, i64* %13, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  br label %255

227:                                              ; preds = %223
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %227
  %231 = load i64, i64* %13, align 8
  %232 = load i32, i32* @NULL_RTX, align 4
  %233 = call i32 @reversed_comparison_code(i64 %231, i32 %232)
  store i32 %233, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* @UNKNOWN, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %230
  br label %255

238:                                              ; preds = %230
  %239 = load i32, i32* %17, align 4
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %238
  br label %250

241:                                              ; preds = %227
  %242 = load i64, i64* %13, align 8
  %243 = call i64 @COMPARISON_P(i64 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %241
  %246 = load i64, i64* %13, align 8
  %247 = call i64 @GET_CODE(i64 %246)
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %245, %241
  br label %250

250:                                              ; preds = %249, %240
  %251 = load i64, i64* %13, align 8
  %252 = call i64 @XEXP(i64 %251, i32 0)
  store i64 %252, i64* %11, align 8
  %253 = load i64, i64* %13, align 8
  %254 = call i64 @XEXP(i64 %253, i32 1)
  store i64 %254, i64* %12, align 8
  br label %22

255:                                              ; preds = %237, %226, %107, %22
  %256 = load i64, i64* %11, align 8
  %257 = call i32 @GET_MODE(i64 %256)
  %258 = load i32*, i32** %9, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i64, i64* %12, align 8
  %260 = call i32 @GET_MODE(i64 %259)
  %261 = load i32*, i32** %10, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i64, i64* %11, align 8
  %263 = call i64 @fold_rtx(i64 %262, i32 0)
  %264 = load i64*, i64** %7, align 8
  store i64 %263, i64* %264, align 8
  %265 = load i64, i64* %12, align 8
  %266 = call i64 @fold_rtx(i64 %265, i32 0)
  %267 = load i64*, i64** %8, align 8
  store i64 %266, i64* %267, align 8
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @COMPARISON_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local %struct.table_elt* @lookup(i64, i32, i32) #1

declare dso_local i32 @SAFE_HASH(i64, i32) #1

declare dso_local i32 @exp_equiv_p(i64, i64, i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @rtx_addr_can_trap_p(i64) #1

declare dso_local i32 @reversed_comparison_code(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @fold_rtx(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
