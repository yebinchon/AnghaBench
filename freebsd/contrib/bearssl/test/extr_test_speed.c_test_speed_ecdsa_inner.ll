; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ecdsa_inner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_speed.c_test_speed_ecdsa_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_17__ = type { i8*, i64, i32 }
%struct.TYPE_16__ = type { i8*, i64, i32 }

@br_sha256_vtable = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"self-test sign/verify failed\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"%-30s %8.2f sign/s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"%-30s %8.2f verify/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_15__*, %struct.TYPE_18__*, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)*)* @test_speed_ecdsa_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_speed_ecdsa_inner(i8* %0, %struct.TYPE_15__* %1, %struct.TYPE_18__* %2, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)* %3, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)*, align 8
  %10 = alloca i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)*, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca [160 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca [160 x i8], align 16
  %15 = alloca [22 x i32], align 16
  %16 = alloca [22 x i32], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_17__, align 8
  %23 = alloca %struct.TYPE_16__, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca double, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca double, align 8
  %31 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)* %3, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)** %9, align 8
  store i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)* %4, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)** %10, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %17, align 8
  %35 = getelementptr inbounds [22 x i32], [22 x i32]* %16, i64 0, i64 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @br_i31_decode(i32* %35, i32 %38, i64 %39)
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %42 = call i32 @memset(i8* %41, i8 signext 84, i32 80)
  %43 = getelementptr inbounds [22 x i32], [22 x i32]* %15, i64 0, i64 0
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [22 x i32], [22 x i32]* %16, i64 0, i64 0
  %46 = call i32 @br_i31_decode_reduce(i32* %43, i8* %44, i32 80, i32* %45)
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %48 = load i64, i64* %17, align 8
  %49 = getelementptr inbounds [22 x i32], [22 x i32]* %15, i64 0, i64 0
  %50 = call i32 @br_i31_encode(i8* %47, i64 %48, i32* %49)
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %18, align 8
  %54 = getelementptr inbounds [160 x i8], [160 x i8]* %12, i64 0, i64 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %18, align 8
  %59 = call i32 @memcpy(i8* %54, i32 %57, i64 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** %61, align 8
  %63 = getelementptr inbounds [160 x i8], [160 x i8]* %12, i64 0, i64 0
  %64 = load i64, i64* %18, align 8
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %66 = load i64, i64* %17, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %62(i8* %63, i64 %64, i8* %65, i64 %66, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = load i64, i64* %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds [160 x i8], [160 x i8]* %12, i64 0, i64 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  store i64 %85, i64* %86, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %88 = call i32 @memset(i8* %87, i8 signext 72, i32 32)
  %89 = load i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)*, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)** %9, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %92 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %93 = call i64 %89(%struct.TYPE_15__* %90, i32* @br_sha256_vtable, i8* %91, %struct.TYPE_17__* %22, i8* %92)
  store i64 %93, i64* %19, align 8
  %94 = load i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)*, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)** %10, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %97 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %98 = load i64, i64* %19, align 8
  %99 = call i32 %94(%struct.TYPE_15__* %95, i8* %96, i32 32, %struct.TYPE_16__* %23, i8* %97, i64 %98)
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %106

101:                                              ; preds = %5
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @EXIT_FAILURE, align 4
  %105 = call i32 @exit(i32 %104) #3
  unreachable

106:                                              ; preds = %5
  store i32 0, i32* %20, align 4
  br label %107

107:                                              ; preds = %125, %106
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %108, 10
  br i1 %109, label %110, label %128

110:                                              ; preds = %107
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = add i8 %112, 1
  store i8 %113, i8* %111, align 1
  %114 = load i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)*, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)** %9, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %116 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %117 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %118 = call i64 %114(%struct.TYPE_15__* %115, i32* @br_sha256_vtable, i8* %116, %struct.TYPE_17__* %22, i8* %117)
  %119 = load i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)*, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)** %10, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %122 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %123 = load i64, i64* %19, align 8
  %124 = call i32 %119(%struct.TYPE_15__* %120, i8* %121, i32 32, %struct.TYPE_16__* %23, i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %107

128:                                              ; preds = %107
  store i64 10, i64* %21, align 8
  br label %129

129:                                              ; preds = %166, %128
  %130 = call i64 (...) @clock()
  store i64 %130, i64* %24, align 8
  %131 = load i64, i64* %21, align 8
  store i64 %131, i64* %27, align 8
  br label %132

132:                                              ; preds = %144, %129
  %133 = load i64, i64* %27, align 8
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 1
  %137 = load i8, i8* %136, align 1
  %138 = add i8 %137, 1
  store i8 %138, i8* %136, align 1
  %139 = load i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)*, i64 (%struct.TYPE_15__*, i32*, i8*, %struct.TYPE_17__*, i8*)** %9, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %142 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %143 = call i64 %139(%struct.TYPE_15__* %140, i32* @br_sha256_vtable, i8* %141, %struct.TYPE_17__* %22, i8* %142)
  store i64 %143, i64* %19, align 8
  br label %144

144:                                              ; preds = %135
  %145 = load i64, i64* %27, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %27, align 8
  br label %132

147:                                              ; preds = %132
  %148 = call i64 (...) @clock()
  store i64 %148, i64* %25, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* %24, align 8
  %151 = sub nsw i64 %149, %150
  %152 = sitofp i64 %151 to double
  %153 = load double, double* @CLOCKS_PER_SEC, align 8
  %154 = fdiv double %152, %153
  store double %154, double* %26, align 8
  %155 = load double, double* %26, align 8
  %156 = fcmp oge double %155, 2.000000e+00
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = load i8*, i8** %6, align 8
  %159 = load i64, i64* %21, align 8
  %160 = sitofp i64 %159 to double
  %161 = load double, double* %26, align 8
  %162 = fdiv double %160, %161
  %163 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %158, double %162)
  %164 = load i32, i32* @stdout, align 4
  %165 = call i32 @fflush(i32 %164)
  br label %169

166:                                              ; preds = %147
  %167 = load i64, i64* %21, align 8
  %168 = shl i64 %167, 1
  store i64 %168, i64* %21, align 8
  br label %129

169:                                              ; preds = %157
  store i64 10, i64* %21, align 8
  br label %170

170:                                              ; preds = %205, %169
  %171 = call i64 (...) @clock()
  store i64 %171, i64* %28, align 8
  %172 = load i64, i64* %21, align 8
  store i64 %172, i64* %31, align 8
  br label %173

173:                                              ; preds = %183, %170
  %174 = load i64, i64* %31, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %173
  %177 = load i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)*, i32 (%struct.TYPE_15__*, i8*, i32, %struct.TYPE_16__*, i8*, i64)** %10, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %179 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %180 = getelementptr inbounds [160 x i8], [160 x i8]* %14, i64 0, i64 0
  %181 = load i64, i64* %19, align 8
  %182 = call i32 %177(%struct.TYPE_15__* %178, i8* %179, i32 32, %struct.TYPE_16__* %23, i8* %180, i64 %181)
  br label %183

183:                                              ; preds = %176
  %184 = load i64, i64* %31, align 8
  %185 = add nsw i64 %184, -1
  store i64 %185, i64* %31, align 8
  br label %173

186:                                              ; preds = %173
  %187 = call i64 (...) @clock()
  store i64 %187, i64* %29, align 8
  %188 = load i64, i64* %29, align 8
  %189 = load i64, i64* %28, align 8
  %190 = sub nsw i64 %188, %189
  %191 = sitofp i64 %190 to double
  %192 = load double, double* @CLOCKS_PER_SEC, align 8
  %193 = fdiv double %191, %192
  store double %193, double* %30, align 8
  %194 = load double, double* %30, align 8
  %195 = fcmp oge double %194, 2.000000e+00
  br i1 %195, label %196, label %205

196:                                              ; preds = %186
  %197 = load i8*, i8** %6, align 8
  %198 = load i64, i64* %21, align 8
  %199 = sitofp i64 %198 to double
  %200 = load double, double* %30, align 8
  %201 = fdiv double %199, %200
  %202 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %197, double %201)
  %203 = load i32, i32* @stdout, align 4
  %204 = call i32 @fflush(i32 %203)
  br label %208

205:                                              ; preds = %186
  %206 = load i64, i64* %21, align 8
  %207 = shl i64 %206, 1
  store i64 %207, i64* %21, align 8
  br label %170

208:                                              ; preds = %196
  ret void
}

declare dso_local i32 @br_i31_decode(i32*, i32, i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @br_i31_decode_reduce(i32*, i8*, i32, i32*) #1

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clock(...) #1

declare dso_local i32 @printf(i8*, i8*, double) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
