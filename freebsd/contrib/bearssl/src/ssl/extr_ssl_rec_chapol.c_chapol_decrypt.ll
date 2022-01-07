; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_chapol.c_chapol_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_chapol.c_chapol_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32, i8*, i64*)* @chapol_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chapol_decrypt(i32* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 16
  store i64 %20, i64* %14, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %12, align 8
  %25 = load i64, i64* %14, align 8
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %27 = call i32 @gen_chapol_process(i32* %21, i32 %22, i32 %23, i8* %24, i64 %25, i8* %26, i32 0)
  store i32 0, i32* %16, align 4
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %46, %5
  %29 = load i64, i64* %13, align 8
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %35, %42
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %13, align 8
  br label %28

49:                                               ; preds = %28
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i8* null, i8** %6, align 8
  br label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %14, align 8
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i8*, i8** %12, align 8
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i8*, i8** %6, align 8
  ret i8* %58
}

declare dso_local i32 @gen_chapol_process(i32*, i32, i32, i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
