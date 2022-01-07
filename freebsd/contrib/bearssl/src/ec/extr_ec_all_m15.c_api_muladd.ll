; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m15.c_api_muladd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m15.c_api_muladd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.TYPE_6__ = type { i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }
%struct.TYPE_4__ = type { i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* }

@br_ec_p256_m15 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@br_ec_c25519_m15 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@br_ec_prime_i15 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)* @api_muladd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_muladd(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %41 [
    i32 128, label %19
    i32 129, label %30
  ]

19:                                               ; preds = %8
  %20 = load i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @br_ec_p256_m15, i32 0, i32 0), align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = call i32 %20(i8* %21, i8* %22, i64 %23, i8* %24, i64 %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %52

30:                                               ; preds = %8
  %31 = load i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @br_ec_c25519_m15, i32 0, i32 0), align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 %31(i8* %32, i8* %33, i64 %34, i8* %35, i64 %36, i8* %37, i64 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %52

41:                                               ; preds = %8
  %42 = load i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)*, i32 (i8*, i8*, i64, i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @br_ec_prime_i15, i32 0, i32 0), align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i64, i64* %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i32 %42(i8* %43, i8* %44, i64 %45, i8* %46, i64 %47, i8* %48, i64 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %41, %30, %19
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
