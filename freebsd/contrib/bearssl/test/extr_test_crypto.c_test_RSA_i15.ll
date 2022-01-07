; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_RSA_i15.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_RSA_i15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"RSA i15 core\00", align 1
@br_rsa_i15_public = common dso_local global i32 0, align 4
@br_rsa_i15_private = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"RSA i15 sign\00", align 1
@br_rsa_i15_pkcs1_sign = common dso_local global i32 0, align 4
@br_rsa_i15_pkcs1_vrfy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"RSA i15 OAEP\00", align 1
@br_rsa_i15_oaep_encrypt = common dso_local global i32 0, align 4
@br_rsa_i15_oaep_decrypt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"RSA i15 PSS\00", align 1
@br_rsa_i15_pss_sign = common dso_local global i32 0, align 4
@br_rsa_i15_pss_vrfy = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"RSA i15 keygen\00", align 1
@br_rsa_i15_keygen = common dso_local global i32 0, align 4
@br_rsa_i15_compute_modulus = common dso_local global i32 0, align 4
@br_rsa_i15_compute_pubexp = common dso_local global i32 0, align 4
@br_rsa_i15_compute_privexp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RSA_i15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RSA_i15() #0 {
  %1 = call i32 @test_RSA_core(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @br_rsa_i15_public, i32* @br_rsa_i15_private)
  %2 = call i32 @test_RSA_sign(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* @br_rsa_i15_private, i32* @br_rsa_i15_pkcs1_sign, i32* @br_rsa_i15_pkcs1_vrfy)
  %3 = call i32 @test_RSA_OAEP(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* @br_rsa_i15_oaep_encrypt, i32* @br_rsa_i15_oaep_decrypt)
  %4 = call i32 @test_RSA_PSS(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* @br_rsa_i15_pss_sign, i32* @br_rsa_i15_pss_vrfy)
  %5 = call i32 @test_RSA_keygen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* @br_rsa_i15_keygen, i32* @br_rsa_i15_compute_modulus, i32* @br_rsa_i15_compute_pubexp, i32* @br_rsa_i15_compute_privexp, i32* @br_rsa_i15_public, i32* @br_rsa_i15_pkcs1_sign, i32* @br_rsa_i15_pkcs1_vrfy)
  ret void
}

declare dso_local i32 @test_RSA_core(i8*, i32*, i32*) #1

declare dso_local i32 @test_RSA_sign(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @test_RSA_OAEP(i8*, i32*, i32*) #1

declare dso_local i32 @test_RSA_PSS(i8*, i32*, i32*) #1

declare dso_local i32 @test_RSA_keygen(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
