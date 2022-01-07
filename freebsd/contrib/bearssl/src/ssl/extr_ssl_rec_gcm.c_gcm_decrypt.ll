; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_gcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ssl/extr_ssl_rec_gcm.c_gcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i32, i8*, i64*)* @gcm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gcm_decrypt(i32* %0, i32 %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca [16 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  store i8* %18, i8** %12, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 24
  store i64 %21, i64* %13, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %28 = call i32 @do_tag(i32* %22, i32 %23, i32 %24, i8* %25, i64 %26, i8* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %34 = call i32 @do_ctr(i32* %29, i8* %30, i8* %31, i64 %32, i8* %33)
  store i8 0, i8* %15, align 1
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %55, %5
  %36 = load i64, i64* %14, align 8
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %42, %49
  %51 = load i8, i8* %15, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %15, align 1
  br label %55

55:                                               ; preds = %38
  %56 = load i64, i64* %14, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %35

58:                                               ; preds = %35
  %59 = load i8, i8* %15, align 1
  %60 = icmp ne i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i8* null, i8** %6, align 8
  br label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %13, align 8
  %64 = load i64*, i64** %11, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i8*, i8** %6, align 8
  ret i8* %67
}

declare dso_local i32 @do_tag(i32*, i32, i32, i8*, i64, i8*) #1

declare dso_local i32 @do_ctr(i32*, i8*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
