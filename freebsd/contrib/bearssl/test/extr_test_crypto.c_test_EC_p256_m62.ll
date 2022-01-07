; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_p256_m62.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_EC_p256_m62.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"EC_p256_m62\00", align 1
@BR_EC_secp256r1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Test EC_p256_m62: UNAVAILABLE\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Test EC_p256_m62 keygen: UNAVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_EC_p256_m62 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_EC_p256_m62() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* (...) @br_ec_p256_m62_get()
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32*, i32** %1, align 8
  %7 = load i32, i32* @BR_EC_secp256r1, align 4
  %8 = shl i32 1, %7
  %9 = call i32 @test_EC_KAT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @BR_EC_secp256r1, align 4
  %12 = shl i32 1, %11
  %13 = call i32 @test_EC_keygen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %12)
  br label %17

14:                                               ; preds = %0
  %15 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32* @br_ec_p256_m62_get(...) #1

declare dso_local i32 @test_EC_KAT(i8*, i32*, i32) #1

declare dso_local i32 @test_EC_keygen(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
