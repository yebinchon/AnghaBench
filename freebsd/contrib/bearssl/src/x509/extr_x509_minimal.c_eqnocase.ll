; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_minimal.c_eqnocase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/x509/extr_x509_minimal.c_eqnocase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @eqnocase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eqnocase(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %7, align 8
  %17 = icmp ugt i64 %15, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  %21 = load i8, i8* %19, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %9, align 8
  %25 = load i8, i8* %23, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %27, 65
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 90
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %32, %29, %18
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %36, 65
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 32
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %38, %35
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %51

49:                                               ; preds = %44
  br label %14

50:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
