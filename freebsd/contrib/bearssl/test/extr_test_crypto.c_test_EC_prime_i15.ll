; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_prime_i15.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_prime_i15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"EC_prime_i15\00", align 1
@br_ec_prime_i15 = common dso_local global i32 0, align 4
@BR_EC_secp256r1 = common dso_local global i32 0, align 4
@BR_EC_secp384r1 = common dso_local global i32 0, align 4
@BR_EC_secp521r1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EC_prime_i15 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EC_prime_i15() #0 {
  %1 = load i32, i32* @BR_EC_secp256r1, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @BR_EC_secp384r1, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, i32* @BR_EC_secp521r1, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = call i32 @test_EC_KAT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @br_ec_prime_i15, i32 %8)
  %10 = load i32, i32* @BR_EC_secp256r1, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @BR_EC_secp384r1, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* @BR_EC_secp521r1, align 4
  %16 = shl i32 1, %15
  %17 = or i32 %14, %16
  %18 = call i32 @test_EC_keygen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @br_ec_prime_i15, i32 %17)
  ret void
}

declare dso_local i32 @test_EC_KAT(i8*, i32*, i32) #1

declare dso_local i32 @test_EC_keygen(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
