; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_bsearch.c_bsearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_bsearch.c_bsearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bsearch(i8* %0, i8* %1, i64 %2, i64 %3, i32 (i8*, i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 (i8*, i8*)* %4, i32 (i8*, i8*)** %11, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i64, i64* %9, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %48, %5
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %19
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = ashr i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %10, align 8
  %28 = mul i64 %26, %27
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  store i8* %29, i8** %15, align 8
  %30 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 %30(i8* %31, i8* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i8*, i8** %15, align 8
  store i8* %37, i8** %6, align 8
  br label %52

38:                                               ; preds = %22
  %39 = load i32, i32* %14, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %41, %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %13, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %19

51:                                               ; preds = %19
  store i8* null, i8** %6, align 8
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i8*, i8** %6, align 8
  ret i8* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
