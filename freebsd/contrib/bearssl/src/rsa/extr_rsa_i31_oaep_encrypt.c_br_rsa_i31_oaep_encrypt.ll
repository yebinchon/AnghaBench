; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_oaep_encrypt.c_br_rsa_i31_oaep_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/rsa/extr_rsa_i31_oaep_encrypt.c_br_rsa_i31_oaep_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_rsa_i31_oaep_encrypt(i32** %0, i32* %1, i8* %2, i64 %3, i32* %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = load i32**, i32*** %11, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = load i64, i64* %17, align 8
  %28 = load i8*, i8** %18, align 8
  %29 = load i64, i64* %19, align 8
  %30 = call i64 @br_rsa_oaep_pad(i32** %21, i32* %22, i8* %23, i64 %24, i32* %25, i8* %26, i64 %27, i8* %28, i64 %29)
  store i64 %30, i64* %20, align 8
  %31 = load i64, i64* %20, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %9
  store i64 0, i64* %10, align 8
  br label %42

34:                                               ; preds = %9
  %35 = load i64, i64* %20, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i64, i64* %20, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = call i64 @br_rsa_i31_public(i8* %36, i64 %37, i32* %38)
  %40 = sub i64 0, %39
  %41 = and i64 %35, %40
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = load i64, i64* %10, align 8
  ret i64 %43
}

declare dso_local i64 @br_rsa_oaep_pad(i32**, i32*, i8*, i64, i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @br_rsa_i31_public(i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
