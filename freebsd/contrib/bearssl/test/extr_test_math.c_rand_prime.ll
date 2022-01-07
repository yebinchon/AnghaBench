; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_rand_prime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_rand_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @rand_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rand_prime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %32, %27, %2
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @RNG, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = call i32 @mpz_urandomb(i32 %6, i32 %7, i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @mpz_setbit(i32 %11, i32 0)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @mpz_setbit(i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @mpz_probab_prime_p(i32 %17, i32 50)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %5
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @mpz_sub_ui(i32 %21, i32 %22, i32 1)
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @mpz_divisible_ui_p(i32 %24, i32 65537)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %5

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mpz_add_ui(i32 %29, i32 %30, i32 1)
  ret void

32:                                               ; preds = %5
  br label %5
}

declare dso_local i32 @mpz_urandomb(i32, i32, i32) #1

declare dso_local i32 @mpz_setbit(i32, i32) #1

declare dso_local i64 @mpz_probab_prime_p(i32, i32) #1

declare dso_local i32 @mpz_sub_ui(i32, i32, i32) #1

declare dso_local i64 @mpz_divisible_ui_p(i32, i32) #1

declare dso_local i32 @mpz_add_ui(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
