; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_RSA_i62.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_RSA_i62.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Inconsistent i62 availability\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"RSA i62 core\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"RSA i62 sign\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"RSA i62 OAEP\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"RSA i62 PSS\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"RSA i62 keygen\00", align 1
@br_rsa_i31_compute_modulus = common dso_local global i32 0, align 4
@br_rsa_i31_compute_pubexp = common dso_local global i32 0, align 4
@br_rsa_i31_compute_privexp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Test RSA i62: UNAVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RSA_i62 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RSA_i62() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = call i64 (...) @br_rsa_i62_public_get()
  store i64 %10, i64* %1, align 8
  %11 = call i64 (...) @br_rsa_i62_private_get()
  store i64 %11, i64* %2, align 8
  %12 = call i64 (...) @br_rsa_i62_pkcs1_sign_get()
  store i64 %12, i64* %3, align 8
  %13 = call i64 (...) @br_rsa_i62_pkcs1_vrfy_get()
  store i64 %13, i64* %4, align 8
  %14 = call i64 (...) @br_rsa_i62_pss_sign_get()
  store i64 %14, i64* %5, align 8
  %15 = call i64 (...) @br_rsa_i62_pss_vrfy_get()
  store i64 %15, i64* %6, align 8
  %16 = call i64 (...) @br_rsa_i62_oaep_encrypt_get()
  store i64 %16, i64* %7, align 8
  %17 = call i64 (...) @br_rsa_i62_oaep_decrypt_get()
  store i64 %17, i64* %8, align 8
  %18 = call i64 (...) @br_rsa_i62_keygen_get()
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %0
  %22 = load i64, i64* %2, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42, %39, %36, %33, %30, %27, %24, %21
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %42
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* %2, align 8
  %53 = call i32 @test_RSA_core(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i64, i64* %2, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @test_RSA_sign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %54, i64 %55, i64 %56)
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @test_RSA_OAEP(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @test_RSA_PSS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @test_RSA_keygen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %64, i32* @br_rsa_i31_compute_modulus, i32* @br_rsa_i31_compute_pubexp, i32* @br_rsa_i31_compute_privexp, i64 %65, i64 %66, i64 %67)
  br label %100

69:                                               ; preds = %0
  %70 = load i64, i64* %2, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %3, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %87, %84, %81, %78, %75, %72, %69
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  %97 = call i32 @exit(i32 %96) #3
  unreachable

98:                                               ; preds = %90
  %99 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %50
  ret void
}

declare dso_local i64 @br_rsa_i62_public_get(...) #1

declare dso_local i64 @br_rsa_i62_private_get(...) #1

declare dso_local i64 @br_rsa_i62_pkcs1_sign_get(...) #1

declare dso_local i64 @br_rsa_i62_pkcs1_vrfy_get(...) #1

declare dso_local i64 @br_rsa_i62_pss_sign_get(...) #1

declare dso_local i64 @br_rsa_i62_pss_vrfy_get(...) #1

declare dso_local i64 @br_rsa_i62_oaep_encrypt_get(...) #1

declare dso_local i64 @br_rsa_i62_oaep_decrypt_get(...) #1

declare dso_local i64 @br_rsa_i62_keygen_get(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @test_RSA_core(i8*, i64, i64) #1

declare dso_local i32 @test_RSA_sign(i8*, i64, i64, i64) #1

declare dso_local i32 @test_RSA_OAEP(i8*, i64, i64) #1

declare dso_local i32 @test_RSA_PSS(i8*, i64, i64) #1

declare dso_local i32 @test_RSA_keygen(i8*, i64, i32*, i32*, i32*, i64, i64, i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
