; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m31.c_api_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_all_m31.c_api_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_10__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_6__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_9__ = type { i32 (i8*, i64, i8*, i64, i32)* }
%struct.TYPE_7__ = type { i32 (i8*, i64, i8*, i64, i32)* }

@br_ec_p256_m31 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@br_ec_c25519_m31 = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@br_ec_prime_i31 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@br_ec_c25519_m64 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@br_ec_p256_m64 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i32)* @api_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @api_mul(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %29 [
    i32 128, label %13
    i32 129, label %21
  ]

13:                                               ; preds = %5
  %14 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @br_ec_p256_m31, i32 0, i32 0), align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 %14(i8* %15, i64 %16, i8* %17, i64 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %37

21:                                               ; preds = %5
  %22 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @br_ec_c25519_m31, i32 0, i32 0), align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 %22(i8* %23, i64 %24, i8* %25, i64 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %5
  %30 = load i32 (i8*, i64, i8*, i64, i32)*, i32 (i8*, i64, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @br_ec_prime_i31, i32 0, i32 0), align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 %30(i8* %31, i64 %32, i8* %33, i64 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %29, %21, %13
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
