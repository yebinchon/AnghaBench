; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_rtx_equal_for_memref_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_rtx_equal_for_memref_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @rtx_equal_for_memref_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_equal_for_memref_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %282

19:                                               ; preds = %15, %2
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 0, i32* %3, align 4
  br label %282

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %282

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @GET_CODE(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @GET_CODE(i64 %35)
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %282

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @GET_MODE(i64 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @GET_MODE(i64 %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %282

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %70 [
    i32 130, label %48
    i32 131, label %55
    i32 129, label %62
    i32 128, label %69
    i32 132, label %69
    i32 133, label %69
  ]

48:                                               ; preds = %46
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @REGNO(i64 %49)
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @REGNO(i64 %51)
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %282

55:                                               ; preds = %46
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @XEXP(i64 %56, i32 0)
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @XEXP(i64 %58, i32 0)
  %60 = icmp eq i64 %57, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %282

62:                                               ; preds = %46
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @XSTR(i64 %63, i32 0)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @XSTR(i64 %65, i32 0)
  %67 = icmp eq i32 %64, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %282

69:                                               ; preds = %46, %46, %46
  store i32 0, i32* %3, align 4
  br label %282

70:                                               ; preds = %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @PLUS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @XEXP(i64 %76, i32 0)
  %78 = load i64, i64* %5, align 8
  %79 = call i64 @XEXP(i64 %78, i32 0)
  %80 = call i32 @rtx_equal_for_memref_p(i64 %77, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load i64, i64* %4, align 8
  %84 = call i64 @XEXP(i64 %83, i32 1)
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @XEXP(i64 %85, i32 1)
  %87 = call i32 @rtx_equal_for_memref_p(i64 %84, i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %105, label %89

89:                                               ; preds = %82, %75
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @XEXP(i64 %90, i32 0)
  %92 = load i64, i64* %5, align 8
  %93 = call i64 @XEXP(i64 %92, i32 1)
  %94 = call i32 @rtx_equal_for_memref_p(i64 %91, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @XEXP(i64 %97, i32 1)
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @XEXP(i64 %99, i32 0)
  %101 = call i32 @rtx_equal_for_memref_p(i64 %98, i64 %100)
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %96, %89
  %104 = phi i1 [ false, %89 ], [ %102, %96 ]
  br label %105

105:                                              ; preds = %103, %82
  %106 = phi i1 [ true, %82 ], [ %104, %103 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %3, align 4
  br label %282

108:                                              ; preds = %71
  %109 = load i64, i64* %4, align 8
  %110 = call i64 @COMMUTATIVE_P(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %150

112:                                              ; preds = %108
  %113 = load i64, i64* %4, align 8
  %114 = call i64 @XEXP(i64 %113, i32 0)
  %115 = call i64 @canon_rtx(i64 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @XEXP(i64 %116, i32 0)
  %118 = call i64 @canon_rtx(i64 %117)
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %5, align 8
  %120 = call i64 @XEXP(i64 %119, i32 1)
  %121 = call i64 @canon_rtx(i64 %120)
  store i64 %121, i64* %12, align 8
  %122 = load i64, i64* %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = call i32 @rtx_equal_for_memref_p(i64 %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %112
  %127 = load i64, i64* %4, align 8
  %128 = call i64 @XEXP(i64 %127, i32 1)
  %129 = call i64 @canon_rtx(i64 %128)
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @rtx_equal_for_memref_p(i64 %129, i64 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %147, label %133

133:                                              ; preds = %126, %112
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @rtx_equal_for_memref_p(i64 %134, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i64, i64* %4, align 8
  %140 = call i64 @XEXP(i64 %139, i32 1)
  %141 = call i64 @canon_rtx(i64 %140)
  %142 = load i64, i64* %11, align 8
  %143 = call i32 @rtx_equal_for_memref_p(i64 %141, i64 %142)
  %144 = icmp ne i32 %143, 0
  br label %145

145:                                              ; preds = %138, %133
  %146 = phi i1 [ false, %133 ], [ %144, %138 ]
  br label %147

147:                                              ; preds = %145, %126
  %148 = phi i1 [ true, %126 ], [ %146, %145 ]
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %3, align 4
  br label %282

150:                                              ; preds = %108
  %151 = load i64, i64* %4, align 8
  %152 = call i64 @NON_COMMUTATIVE_P(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %150
  %155 = load i64, i64* %4, align 8
  %156 = call i64 @XEXP(i64 %155, i32 0)
  %157 = call i64 @canon_rtx(i64 %156)
  %158 = load i64, i64* %5, align 8
  %159 = call i64 @XEXP(i64 %158, i32 0)
  %160 = call i64 @canon_rtx(i64 %159)
  %161 = call i32 @rtx_equal_for_memref_p(i64 %157, i64 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %154
  %164 = load i64, i64* %4, align 8
  %165 = call i64 @XEXP(i64 %164, i32 1)
  %166 = call i64 @canon_rtx(i64 %165)
  %167 = load i64, i64* %5, align 8
  %168 = call i64 @XEXP(i64 %167, i32 1)
  %169 = call i64 @canon_rtx(i64 %168)
  %170 = call i32 @rtx_equal_for_memref_p(i64 %166, i64 %169)
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %163, %154
  %173 = phi i1 [ false, %154 ], [ %171, %163 ]
  %174 = zext i1 %173 to i32
  store i32 %174, i32* %3, align 4
  br label %282

175:                                              ; preds = %150
  %176 = load i64, i64* %4, align 8
  %177 = call i64 @UNARY_P(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load i64, i64* %4, align 8
  %181 = call i64 @XEXP(i64 %180, i32 0)
  %182 = call i64 @canon_rtx(i64 %181)
  %183 = load i64, i64* %5, align 8
  %184 = call i64 @XEXP(i64 %183, i32 0)
  %185 = call i64 @canon_rtx(i64 %184)
  %186 = call i32 @rtx_equal_for_memref_p(i64 %182, i64 %185)
  store i32 %186, i32* %3, align 4
  br label %282

187:                                              ; preds = %175
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = call i8* @GET_RTX_FORMAT(i32 %190)
  store i8* %191, i8** %9, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @GET_RTX_LENGTH(i32 %192)
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %278, %189
  %196 = load i32, i32* %6, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %281

198:                                              ; preds = %195
  %199 = load i8*, i8** %9, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  switch i32 %204, label %275 [
    i32 105, label %205
    i32 69, label %215
    i32 101, label %250
    i32 115, label %263
    i32 48, label %274
  ]

205:                                              ; preds = %198
  %206 = load i64, i64* %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @XINT(i64 %206, i32 %207)
  %209 = load i64, i64* %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @XINT(i64 %209, i32 %210)
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %282

214:                                              ; preds = %205
  br label %277

215:                                              ; preds = %198
  %216 = load i64, i64* %4, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @XVECLEN(i64 %216, i32 %217)
  %219 = load i64, i64* %5, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @XVECLEN(i64 %219, i32 %220)
  %222 = icmp ne i32 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  store i32 0, i32* %3, align 4
  br label %282

224:                                              ; preds = %215
  store i32 0, i32* %7, align 4
  br label %225

225:                                              ; preds = %246, %224
  %226 = load i32, i32* %7, align 4
  %227 = load i64, i64* %4, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 @XVECLEN(i64 %227, i32 %228)
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %249

231:                                              ; preds = %225
  %232 = load i64, i64* %4, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* %7, align 4
  %235 = call i64 @XVECEXP(i64 %232, i32 %233, i32 %234)
  %236 = call i64 @canon_rtx(i64 %235)
  %237 = load i64, i64* %5, align 8
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call i64 @XVECEXP(i64 %237, i32 %238, i32 %239)
  %241 = call i64 @canon_rtx(i64 %240)
  %242 = call i32 @rtx_equal_for_memref_p(i64 %236, i64 %241)
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %231
  store i32 0, i32* %3, align 4
  br label %282

245:                                              ; preds = %231
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %7, align 4
  br label %225

249:                                              ; preds = %225
  br label %277

250:                                              ; preds = %198
  %251 = load i64, i64* %4, align 8
  %252 = load i32, i32* %6, align 4
  %253 = call i64 @XEXP(i64 %251, i32 %252)
  %254 = call i64 @canon_rtx(i64 %253)
  %255 = load i64, i64* %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = call i64 @XEXP(i64 %255, i32 %256)
  %258 = call i64 @canon_rtx(i64 %257)
  %259 = call i32 @rtx_equal_for_memref_p(i64 %254, i64 %258)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %282

262:                                              ; preds = %250
  br label %277

263:                                              ; preds = %198
  %264 = load i64, i64* %4, align 8
  %265 = load i32, i32* %6, align 4
  %266 = call i32 @XSTR(i64 %264, i32 %265)
  %267 = load i64, i64* %5, align 8
  %268 = load i32, i32* %6, align 4
  %269 = call i32 @XSTR(i64 %267, i32 %268)
  %270 = call i32 @strcmp(i32 %266, i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %263
  store i32 0, i32* %3, align 4
  br label %282

273:                                              ; preds = %263
  br label %277

274:                                              ; preds = %198
  br label %277

275:                                              ; preds = %198
  %276 = call i32 (...) @gcc_unreachable()
  br label %277

277:                                              ; preds = %275, %274, %273, %262, %249, %214
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %6, align 4
  br label %195

281:                                              ; preds = %195
  store i32 1, i32* %3, align 4
  br label %282

282:                                              ; preds = %281, %272, %261, %244, %223, %213, %179, %172, %147, %105, %69, %62, %55, %48, %45, %38, %30, %25, %18
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XSTR(i64, i32) #1

declare dso_local i64 @COMMUTATIVE_P(i64) #1

declare dso_local i64 @canon_rtx(i64) #1

declare dso_local i64 @NON_COMMUTATIVE_P(i64) #1

declare dso_local i64 @UNARY_P(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
