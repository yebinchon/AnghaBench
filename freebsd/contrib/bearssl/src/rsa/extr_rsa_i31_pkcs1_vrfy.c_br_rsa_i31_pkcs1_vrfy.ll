; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_pkcs1_vrfy.c_br_rsa_i31_pkcs1_vrfy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_pkcs1_vrfy.c_br_rsa_i31_pkcs1_vrfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BR_MAX_RSA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_rsa_i31_pkcs1_vrfy(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* @BR_MAX_RSA_SIZE, align 4
  %18 = ashr i32 %17, 3
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %14, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %15, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, %19
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %40

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @memcpy(i8* %21, i8* %26, i64 %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @br_rsa_i31_public(i8* %21, i64 %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %40

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @br_rsa_pkcs1_sig_unpad(i8* %21, i64 %35, i8* %36, i64 %37, i8* %38)
  store i32 %39, i32* %7, align 4
  store i32 1, i32* %16, align 4
  br label %40

40:                                               ; preds = %34, %33, %24
  %41 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @br_rsa_i31_public(i8*, i64, i32*) #2

declare dso_local i32 @br_rsa_pkcs1_sig_unpad(i8*, i64, i8*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
