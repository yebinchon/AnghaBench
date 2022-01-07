; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_i31_sign_asn1.c_br_ecdsa_i31_sign_asn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_i31_sign_asn1.c_br_ecdsa_i31_sign_asn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ORDER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_ecdsa_i31_sign_asn1(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @ORDER_LEN, align 4
  %17 = shl i32 %16, 1
  %18 = add nsw i32 %17, 12
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i64 @br_ecdsa_i31_sign_raw(i32* %22, i32* %23, i8* %24, i32* %25, i8* %21)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @br_ecdsa_raw_to_asn1(i8* %21, i64 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %21, i64 %34)
  %36 = load i64, i64* %14, align 8
  store i64 %36, i64* %6, align 8
  store i32 1, i32* %15, align 4
  br label %37

37:                                               ; preds = %30, %29
  %38 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i64, i64* %6, align 8
  ret i64 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @br_ecdsa_i31_sign_raw(i32*, i32*, i8*, i32*, i8*) #2

declare dso_local i64 @br_ecdsa_raw_to_asn1(i8*, i64) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
