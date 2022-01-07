; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_modpow_i31.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_modpow_i31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Test ModPow/i31: \00", align 1
@br_sha256_vtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"seed modpow\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ModPow i31/i15\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_modpow_i31 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_modpow_i31() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca [35 x i32], align 16
  %11 = alloca [35 x i32], align 16
  %12 = alloca [70 x i32], align 16
  %13 = alloca [70 x i32], align 16
  %14 = alloca [1000 x i32], align 16
  %15 = alloca [2000 x i32], align 16
  %16 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @br_hmac_drbg_init(i32* %1, i32* @br_sha256_vtable, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  store i32 10, i32* %2, align 4
  br label %18

18:                                               ; preds = %121, %0
  %19 = load i32, i32* %2, align 4
  %20 = icmp sle i32 %19, 500
  br i1 %20, label %21, label %124

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 7
  %24 = ashr i32 %23, 3
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %3, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @br_hmac_drbg_generate(i32* %1, i8* %26, i64 %27)
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @br_hmac_drbg_generate(i32* %1, i8* %29, i64 %30)
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @br_hmac_drbg_generate(i32* %1, i8* %32, i64 %33)
  %35 = load i64, i64* %3, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %39, 1
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %37, align 1
  %42 = load i64, i64* %3, align 8
  %43 = shl i64 %42, 3
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %2, align 4
  %46 = sub nsw i32 %44, %45
  %47 = ashr i32 255, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = zext i8 %50 to i32
  %52 = and i32 %51, %48
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %49, align 16
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = lshr i32 %55, 1
  %57 = sub i32 %54, %56
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, %57
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 16
  %63 = load i32, i32* %9, align 4
  %64 = lshr i32 %63, 1
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, %64
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 16
  %70 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 0
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %72 = load i64, i64* %3, align 8
  %73 = call i32 @br_i31_decode(i32* %70, i8* %71, i64 %72)
  %74 = getelementptr inbounds [35 x i32], [35 x i32]* %10, i64 0, i64 0
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 0
  %78 = call i32 @br_i31_decode_mod(i32* %74, i8* %75, i64 %76, i32* %77)
  %79 = getelementptr inbounds [35 x i32], [35 x i32]* %10, i64 0, i64 0
  %80 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 0
  %83 = getelementptr inbounds [35 x i32], [35 x i32]* %11, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @br_i31_ninv31(i32 %84)
  %86 = getelementptr inbounds [1000 x i32], [1000 x i32]* %14, i64 0, i64 0
  %87 = call i32 @br_i31_modpow_opt(i32* %79, i8* %80, i64 %81, i32* %82, i32 %85, i32* %86, i32 1000)
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds [35 x i32], [35 x i32]* %10, i64 0, i64 0
  %91 = call i32 @br_i31_encode(i8* %88, i64 %89, i32* %90)
  %92 = getelementptr inbounds [70 x i32], [70 x i32]* %13, i64 0, i64 0
  %93 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @br_i15_decode(i32* %92, i8* %93, i64 %94)
  %96 = getelementptr inbounds [70 x i32], [70 x i32]* %12, i64 0, i64 0
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %98 = load i64, i64* %3, align 8
  %99 = getelementptr inbounds [70 x i32], [70 x i32]* %13, i64 0, i64 0
  %100 = call i32 @br_i15_decode_mod(i32* %96, i8* %97, i64 %98, i32* %99)
  %101 = getelementptr inbounds [70 x i32], [70 x i32]* %12, i64 0, i64 0
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %103 = load i64, i64* %3, align 8
  %104 = getelementptr inbounds [70 x i32], [70 x i32]* %13, i64 0, i64 0
  %105 = getelementptr inbounds [70 x i32], [70 x i32]* %13, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @br_i15_ninv15(i32 %106)
  %108 = getelementptr inbounds [2000 x i32], [2000 x i32]* %15, i64 0, i64 0
  %109 = call i32 @br_i15_modpow_opt(i32* %101, i8* %102, i64 %103, i32* %104, i32 %107, i32* %108, i32 2000)
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %111 = load i64, i64* %3, align 8
  %112 = getelementptr inbounds [70 x i32], [70 x i32]* %12, i64 0, i64 0
  %113 = call i32 @br_i15_encode(i8* %110, i64 %111, i32* %112)
  %114 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %115 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @check_equals(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %114, i8* %115, i64 %116)
  %118 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @stdout, align 4
  %120 = call i32 @fflush(i32 %119)
  br label %121

121:                                              ; preds = %21
  %122 = load i32, i32* %2, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %2, align 4
  br label %18

124:                                              ; preds = %18
  %125 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 @fflush(i32 %126)
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @br_hmac_drbg_init(i32*, i32*, i8*, i32) #1

declare dso_local i32 @br_hmac_drbg_generate(i32*, i8*, i64) #1

declare dso_local i32 @br_i31_decode(i32*, i8*, i64) #1

declare dso_local i32 @br_i31_decode_mod(i32*, i8*, i64, i32*) #1

declare dso_local i32 @br_i31_modpow_opt(i32*, i8*, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @br_i31_ninv31(i32) #1

declare dso_local i32 @br_i31_encode(i8*, i64, i32*) #1

declare dso_local i32 @br_i15_decode(i32*, i8*, i64) #1

declare dso_local i32 @br_i15_decode_mod(i32*, i8*, i64, i32*) #1

declare dso_local i32 @br_i15_modpow_opt(i32*, i8*, i64, i32*, i32, i32*, i32) #1

declare dso_local i32 @br_i15_ninv15(i32) #1

declare dso_local i32 @br_i15_encode(i8*, i64, i32*) #1

declare dso_local i32 @check_equals(i8*, i8*, i8*, i64) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
