; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_higher_prime_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_hash.c_higher_prime_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@higher_prime_number.primes = internal constant [20 x i64] [i64 127, i64 2039, i64 32749, i64 65521, i64 131071, i64 262139, i64 524287, i64 1048573, i64 2097143, i64 4194301, i64 8388593, i64 16777213, i64 33554393, i64 67108859, i64 134217689, i64 268435399, i64 536870909, i64 1073741789, i64 2147483647, i64 4294967291], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @higher_prime_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @higher_prime_number(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i64* getelementptr inbounds ([20 x i64], [20 x i64]* @higher_prime_number.primes, i64 0, i64 0), i64** %4, align 8
  store i64* getelementptr inbounds ([20 x i64], [20 x i64]* @higher_prime_number.primes, i64 1, i64 0), i64** %5, align 8
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i64*, i64** %4, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = icmp ne i64* %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i64*, i64** %4, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = ptrtoint i64* %13 to i64
  %16 = ptrtoint i64* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 8
  %19 = sdiv i64 %18, 2
  %20 = getelementptr inbounds i64, i64* %12, i64 %19
  store i64* %20, i64** %6, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load i64*, i64** %6, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64* %27, i64** %4, align 8
  br label %30

28:                                               ; preds = %11
  %29 = load i64*, i64** %6, align 8
  store i64* %29, i64** %5, align 8
  br label %30

30:                                               ; preds = %28, %25
  br label %7

31:                                               ; preds = %7
  %32 = load i64, i64* %3, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 0, i64* %2, align 8
  br label %40

37:                                               ; preds = %31
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
