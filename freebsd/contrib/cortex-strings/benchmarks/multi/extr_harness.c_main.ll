; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/multi/extr_harness.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/cortex-strings/benchmarks/multi/extr_harness.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i8*, i32 (i8*, i8*, i32)* }
%struct.timespec = type { i32, i32 }

@MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"c:l:ft:r:hva:\00", align 1
@optarg = common dso_local global i32 0, align 4
@MAX_ALIGNMENT = common dso_local global i32 0, align 4
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"try-\00", align 1
@.str.3 = private unnamed_addr constant [95 x i8] c"%s:%s:%u:%u:%d:%d:%s:%.6f: took %.6f s for %u calls to %s of %u bytes.  ~%.3f MB/s corrected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.test*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.timespec, align 4
  %20 = alloca %struct.timespec, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32 (i8*, i8*, i32)*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = load i32, i32* @MIN_BUFFER_SIZE, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  store i32 31, i32* %7, align 4
  store i32 10000000, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i32 8, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %30

30:                                               ; preds = %72, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %14, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %73

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  switch i32 %36, label %67 [
    i32 99, label %37
    i32 108, label %43
    i32 97, label %49
    i32 102, label %55
    i32 116, label %56
    i32 114, label %59
    i32 104, label %62
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @optarg, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @parse_int_arg(i32 %38, i8* %41)
  store i32 %42, i32* %7, align 4
  br label %72

43:                                               ; preds = %35
  %44 = load i32, i32* @optarg, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @parse_int_arg(i32 %44, i8* %47)
  store i32 %48, i32* %8, align 4
  br label %72

49:                                               ; preds = %35
  %50 = load i32, i32* @optarg, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @parse_alignment_arg(i32 %50, i8* %53, i32* %11, i32* %12)
  br label %72

55:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %72

56:                                               ; preds = %35
  %57 = load i32, i32* @optarg, align 4
  %58 = call i8* @strdup(i32 %57)
  store i8* %58, i8** %10, align 8
  br label %72

59:                                               ; preds = %35
  %60 = load i32, i32* @optarg, align 4
  %61 = call i8* @strdup(i32 %60)
  store i8* %61, i8** %13, align 8
  br label %72

62:                                               ; preds = %35
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @usage(i8* %65)
  br label %72

67:                                               ; preds = %35
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @usage(i8* %70)
  br label %72

72:                                               ; preds = %67, %62, %59, %56, %55, %49, %43, %37
  br label %30

73:                                               ; preds = %30
  %74 = load i8*, i8** %10, align 8
  %75 = call %struct.test* @find_test(i8* %74)
  store %struct.test* %75, %struct.test** %15, align 8
  %76 = load %struct.test*, %struct.test** %15, align 8
  %77 = icmp eq %struct.test* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @usage(i8* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MAX_ALIGNMENT, align 4
  %86 = mul nsw i32 %85, 2
  %87 = add nsw i32 %84, %86
  %88 = load i32, i32* @MIN_BUFFER_SIZE, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MAX_ALIGNMENT, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %91, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %6, align 8
  br label %96

96:                                               ; preds = %90, %83
  %97 = load i64, i64* %6, align 8
  %98 = call i8* @malloc(i64 %97)
  store i8* %98, i8** %16, align 8
  %99 = load i64, i64* %6, align 8
  %100 = call i8* @malloc(i64 %99)
  store i8* %100, i8** %17, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i8*, i8** %17, align 8
  %105 = icmp ne i8* %104, null
  br label %106

106:                                              ; preds = %103, %96
  %107 = phi i1 [ false, %96 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i8* @realign(i8* %110, i32 %111)
  store i8* %112, i8** %16, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i8* @realign(i8* %113, i32 %114)
  store i8* %115, i8** %17, align 8
  %116 = call i32 @srandom(i32 1539)
  store i32 0, i32* %18, align 4
  br label %117

117:                                              ; preds = %141, %106
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %6, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %117
  %123 = call i64 (...) @random()
  %124 = trunc i64 %123 to i8
  %125 = sext i8 %124 to i32
  %126 = or i32 %125, 1
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %16, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 %127, i8* %131, align 1
  %132 = load i8*, i8** %16, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 %136, i8* %140, align 1
  br label %141

141:                                              ; preds = %122
  %142 = load i32, i32* %18, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %18, align 4
  br label %117

144:                                              ; preds = %117
  %145 = load i8*, i8** %16, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %17, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %154 = call i32 @clock_gettime(i32 %153, %struct.timespec* %19)
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %21, align 4
  %156 = icmp eq i32 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.test*, %struct.test** %15, align 8
  %160 = getelementptr inbounds %struct.test, %struct.test* %159, i32 0, i32 1
  %161 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %160, align 8
  store i32 (i8*, i8*, i32)* %161, i32 (i8*, i8*, i32)** %22, align 8
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %144
  store i32 0, i32* %23, align 4
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %22, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 %170(i8* %171, i8* %172, i32 %173)
  br label %175

175:                                              ; preds = %169
  %176 = load i32, i32* %23, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %23, align 4
  br label %165

178:                                              ; preds = %165
  br label %196

179:                                              ; preds = %144
  store i32 0, i32* %24, align 4
  br label %180

180:                                              ; preds = %192, %179
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %180
  %185 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %22, align 8
  %186 = load i8*, i8** %17, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 %185(i8* %186, i8* %187, i32 %188)
  %190 = load i8*, i8** %17, align 8
  %191 = call i32 @empty(i8* %190)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %24, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %24, align 4
  br label %180

195:                                              ; preds = %180
  br label %196

196:                                              ; preds = %195, %178
  %197 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %198 = call i32 @clock_gettime(i32 %197, %struct.timespec* %20)
  store i32 %198, i32* %21, align 4
  %199 = load i32, i32* %21, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @assert(i32 %201)
  %203 = load i8**, i8*** %5, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i8* @strrchr(i8* %205, i8 signext 47)
  store i8* %206, i8** %25, align 8
  %207 = load i8*, i8** %25, align 8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %196
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %25, align 8
  br label %213

213:                                              ; preds = %209, %196
  %214 = load i8*, i8** %25, align 8
  %215 = call i8* @strstr(i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %215, i8** %25, align 8
  %216 = load i8*, i8** %25, align 8
  %217 = icmp ne i8* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 @assert(i32 %218)
  %220 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %221, %223
  %225 = sitofp i32 %224 to double
  %226 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %227, %229
  %231 = sitofp i32 %230 to double
  %232 = fmul double %231, 1.000000e-09
  %233 = fadd double %225, %232
  store double %233, double* %26, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sitofp i32 %234 to double
  %236 = fmul double 4.487300e-01, %235
  %237 = fdiv double %236, 5.000000e+07
  store double %237, double* %27, align 8
  %238 = load i8*, i8** %25, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 4
  %240 = load %struct.test*, %struct.test** %15, align 8
  %241 = getelementptr inbounds %struct.test, %struct.test* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i8*, i8** %13, align 8
  %248 = load double, double* %26, align 8
  %249 = load double, double* %26, align 8
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.test*, %struct.test** %15, align 8
  %252 = getelementptr inbounds %struct.test, %struct.test* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = sitofp i32 %255 to double
  %257 = load i32, i32* %7, align 4
  %258 = sitofp i32 %257 to double
  %259 = fmul double %256, %258
  %260 = load double, double* %26, align 8
  %261 = load double, double* %27, align 8
  %262 = fsub double %260, %261
  %263 = fdiv double %259, %262
  %264 = fdiv double %263, 0x4130000000000000
  %265 = call i32 @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.3, i64 0, i64 0), i8* %239, i8* %242, i32 %243, i32 %244, i32 %245, i32 %246, i8* %247, double %248, double %249, i32 %250, i8* %253, i32 %254, double %264)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @parse_int_arg(i32, i8*) #1

declare dso_local i32 @parse_alignment_arg(i32, i8*, i32*, i32*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local %struct.test* @find_test(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @realign(i8*, i32) #1

declare dso_local i32 @srandom(i32) #1

declare dso_local i64 @random(...) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @empty(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32, i32, i32, i32, i8*, double, double, i32, i8*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
