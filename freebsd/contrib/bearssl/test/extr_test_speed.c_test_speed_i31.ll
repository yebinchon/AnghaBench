; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_i31.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_i31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_speed_i31.bp = internal constant [66 x i8] c"\01\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FAQ\86\87\83\BF/\96k\7F\CC\01H\F7\09\A5\D0;\B5\C9\B8\89\9CG\AE\BBo\B7\1E\918d\09", align 16
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [19 x i8] c"%-30s %8.2f ops/s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"i31 to_monty\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"i31 from_monty\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"i31 montymul\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"i31 moddiv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_speed_i31 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_i31() #0 {
  %1 = alloca [126 x i8], align 16
  %2 = alloca [20 x i32], align 16
  %3 = alloca [20 x i32], align 16
  %4 = alloca [20 x i32], align 16
  %5 = alloca [20 x i32], align 16
  %6 = alloca [60 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  %26 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %27 = call i32 @br_i31_decode(i32* %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @test_speed_i31.bp, i64 0, i64 0), i32 66)
  %28 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @br_i31_ninv31(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds [126 x i8], [126 x i8]* %1, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i8 zeroext 84, i32 126)
  %33 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %34 = getelementptr inbounds [126 x i8], [126 x i8]* %1, i64 0, i64 0
  %35 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %36 = call i32 @br_i31_decode_reduce(i32* %33, i8* %34, i32 126, i32* %35)
  %37 = getelementptr inbounds [126 x i8], [126 x i8]* %1, i64 0, i64 0
  %38 = call i32 @memset(i8* %37, i8 zeroext 85, i32 126)
  %39 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [126 x i8], [126 x i8]* %1, i64 0, i64 0
  %41 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %42 = call i32 @br_i31_decode_reduce(i32* %39, i8* %40, i32 126, i32* %41)
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %50, %0
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %48 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %49 = call i32 @br_i31_to_monty(i32* %47, i32* %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %43

53:                                               ; preds = %43
  store i64 10, i64* %9, align 8
  br label %54

54:                                               ; preds = %85, %53
  %55 = call i64 (...) @clock()
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %64, %54
  %58 = load i64, i64* %13, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %62 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %63 = call i32 @br_i31_to_monty(i32* %61, i32* %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %13, align 8
  br label %57

67:                                               ; preds = %57
  %68 = call i64 (...) @clock()
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = sub nsw i64 %69, %70
  %72 = sitofp i64 %71 to double
  %73 = load double, double* @CLOCKS_PER_SEC, align 8
  %74 = fdiv double %72, %73
  store double %74, double* %12, align 8
  %75 = load double, double* %12, align 8
  %76 = fcmp oge double %75, 2.000000e+00
  br i1 %76, label %77, label %85

77:                                               ; preds = %67
  %78 = load i64, i64* %9, align 8
  %79 = sitofp i64 %78 to double
  %80 = load double, double* %12, align 8
  %81 = fdiv double %79, %80
  %82 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %81)
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fflush(i32 %83)
  br label %88

85:                                               ; preds = %67
  %86 = load i64, i64* %9, align 8
  %87 = shl i64 %86, 1
  store i64 %87, i64* %9, align 8
  br label %54

88:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %97, %88
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 10
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %94 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @br_i31_from_monty(i32* %93, i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %89

100:                                              ; preds = %89
  store i64 10, i64* %9, align 8
  br label %101

101:                                              ; preds = %133, %100
  %102 = call i64 (...) @clock()
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %9, align 8
  store i64 %103, i64* %17, align 8
  br label %104

104:                                              ; preds = %112, %101
  %105 = load i64, i64* %17, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %109 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @br_i31_from_monty(i32* %108, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %107
  %113 = load i64, i64* %17, align 8
  %114 = add nsw i64 %113, -1
  store i64 %114, i64* %17, align 8
  br label %104

115:                                              ; preds = %104
  %116 = call i64 (...) @clock()
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %14, align 8
  %119 = sub nsw i64 %117, %118
  %120 = sitofp i64 %119 to double
  %121 = load double, double* @CLOCKS_PER_SEC, align 8
  %122 = fdiv double %120, %121
  store double %122, double* %16, align 8
  %123 = load double, double* %16, align 8
  %124 = fcmp oge double %123, 2.000000e+00
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load i64, i64* %9, align 8
  %127 = sitofp i64 %126 to double
  %128 = load double, double* %16, align 8
  %129 = fdiv double %127, %128
  %130 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %129)
  %131 = load i32, i32* @stdout, align 4
  %132 = call i32 @fflush(i32 %131)
  br label %136

133:                                              ; preds = %115
  %134 = load i64, i64* %9, align 8
  %135 = shl i64 %134, 1
  store i64 %135, i64* %9, align 8
  br label %101

136:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %147, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 10
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %142 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %143 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %144 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @br_i31_montymul(i32* %141, i32* %142, i32* %143, i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %137

150:                                              ; preds = %137
  store i64 10, i64* %9, align 8
  br label %151

151:                                              ; preds = %185, %150
  %152 = call i64 (...) @clock()
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %9, align 8
  store i64 %153, i64* %21, align 8
  br label %154

154:                                              ; preds = %164, %151
  %155 = load i64, i64* %21, align 8
  %156 = icmp sgt i64 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = getelementptr inbounds [20 x i32], [20 x i32]* %5, i64 0, i64 0
  %159 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %160 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %161 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @br_i31_montymul(i32* %158, i32* %159, i32* %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %157
  %165 = load i64, i64* %21, align 8
  %166 = add nsw i64 %165, -1
  store i64 %166, i64* %21, align 8
  br label %154

167:                                              ; preds = %154
  %168 = call i64 (...) @clock()
  store i64 %168, i64* %19, align 8
  %169 = load i64, i64* %19, align 8
  %170 = load i64, i64* %18, align 8
  %171 = sub nsw i64 %169, %170
  %172 = sitofp i64 %171 to double
  %173 = load double, double* @CLOCKS_PER_SEC, align 8
  %174 = fdiv double %172, %173
  store double %174, double* %20, align 8
  %175 = load double, double* %20, align 8
  %176 = fcmp oge double %175, 2.000000e+00
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load i64, i64* %9, align 8
  %179 = sitofp i64 %178 to double
  %180 = load double, double* %20, align 8
  %181 = fdiv double %179, %180
  %182 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), double %181)
  %183 = load i32, i32* @stdout, align 4
  %184 = call i32 @fflush(i32 %183)
  br label %188

185:                                              ; preds = %167
  %186 = load i64, i64* %9, align 8
  %187 = shl i64 %186, 1
  store i64 %187, i64* %9, align 8
  br label %151

188:                                              ; preds = %177
  store i32 0, i32* %8, align 4
  br label %189

189:                                              ; preds = %199, %188
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 10
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %194 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %195 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %196 = load i32, i32* %7, align 4
  %197 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %198 = call i32 @br_i31_moddiv(i32* %193, i32* %194, i32* %195, i32 %196, i32* %197)
  br label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %189

202:                                              ; preds = %189
  store i64 10, i64* %9, align 8
  br label %203

203:                                              ; preds = %237, %202
  %204 = call i64 (...) @clock()
  store i64 %204, i64* %22, align 8
  %205 = load i64, i64* %9, align 8
  store i64 %205, i64* %25, align 8
  br label %206

206:                                              ; preds = %216, %203
  %207 = load i64, i64* %25, align 8
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = getelementptr inbounds [20 x i32], [20 x i32]* %3, i64 0, i64 0
  %211 = getelementptr inbounds [20 x i32], [20 x i32]* %4, i64 0, i64 0
  %212 = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 0, i64 0
  %213 = load i32, i32* %7, align 4
  %214 = getelementptr inbounds [60 x i32], [60 x i32]* %6, i64 0, i64 0
  %215 = call i32 @br_i31_moddiv(i32* %210, i32* %211, i32* %212, i32 %213, i32* %214)
  br label %216

216:                                              ; preds = %209
  %217 = load i64, i64* %25, align 8
  %218 = add nsw i64 %217, -1
  store i64 %218, i64* %25, align 8
  br label %206

219:                                              ; preds = %206
  %220 = call i64 (...) @clock()
  store i64 %220, i64* %23, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load i64, i64* %22, align 8
  %223 = sub nsw i64 %221, %222
  %224 = sitofp i64 %223 to double
  %225 = load double, double* @CLOCKS_PER_SEC, align 8
  %226 = fdiv double %224, %225
  store double %226, double* %24, align 8
  %227 = load double, double* %24, align 8
  %228 = fcmp oge double %227, 2.000000e+00
  br i1 %228, label %229, label %237

229:                                              ; preds = %219
  %230 = load i64, i64* %9, align 8
  %231 = sitofp i64 %230 to double
  %232 = load double, double* %24, align 8
  %233 = fdiv double %231, %232
  %234 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), double %233)
  %235 = load i32, i32* @stdout, align 4
  %236 = call i32 @fflush(i32 %235)
  br label %240

237:                                              ; preds = %219
  %238 = load i64, i64* %9, align 8
  %239 = shl i64 %238, 1
  store i64 %239, i64* %9, align 8
  br label %203

240:                                              ; preds = %229
  ret void
}

declare dso_local i32 @br_i31_decode(i32*, i8*, i32) #1

declare dso_local i32 @br_i31_ninv31(i32) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i32 @br_i31_decode_reduce(i32*, i8*, i32, i32*) #1

declare dso_local i32 @br_i31_to_monty(i32*, i32*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @br_i31_from_monty(i32*, i32*, i32) #1

declare dso_local i32 @br_i31_montymul(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @br_i31_moddiv(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
