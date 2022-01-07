; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m15.c_api_mulgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m15.c_api_mulgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (i8*, i8*, i64, i32)* }
%struct.TYPE_6__ = type { i64 (i8*, i8*, i64, i32)* }
%struct.TYPE_4__ = type { i64 (i8*, i8*, i64, i32)* }

@br_ec_p256_m15 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@br_ec_c25519_m15 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@br_ec_prime_i15 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i32)* @api_mulgen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @api_mulgen(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %18
  ]

11:                                               ; preds = %4
  %12 = load i64 (i8*, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @br_ec_p256_m15, i32 0, i32 0), align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 %12(i8* %13, i8* %14, i64 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  br label %32

18:                                               ; preds = %4
  %19 = load i64 (i8*, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @br_ec_c25519_m15, i32 0, i32 0), align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 %19(i8* %20, i8* %21, i64 %22, i32 %23)
  store i64 %24, i64* %5, align 8
  br label %32

25:                                               ; preds = %4
  %26 = load i64 (i8*, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @br_ec_prime_i15, i32 0, i32 0), align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 %26(i8* %27, i8* %28, i64 %29, i32 %30)
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %25, %18, %11
  %33 = load i64, i64* %5, align 8
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
