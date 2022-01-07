; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_scan_char_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_ifdef.c_scan_char_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @scan_char_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scan_char_literal(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %6, align 8
  %14 = load i8, i8* %12, align 1
  store i8 %14, i8* %9, align 1
  %15 = load i8, i8* %9, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %54 [
    i32 0, label %17
    i32 39, label %17
    i32 92, label %18
  ]

17:                                               ; preds = %2, %2
  store i8* null, i8** %3, align 8
  br label %67

18:                                               ; preds = %2
  store i8 0, i8* %7, align 1
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %9, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 39
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i8, i8* %9, align 1
  %27 = sext i8 %26 to i32
  %28 = sub nsw i32 %27, 48
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ule i32 8, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i8* null, i8** %3, align 8
  br label %67

32:                                               ; preds = %25
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = mul nsw i32 8, %34
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %35, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %7, align 1
  br label %19

39:                                               ; preds = %19
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sub nsw i64 %44, 2
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sle i32 1, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = icmp sle i32 %50, 3
  br i1 %51, label %53, label %52

52:                                               ; preds = %49, %39
  store i8* null, i8** %3, align 8
  br label %67

53:                                               ; preds = %49
  br label %63

54:                                               ; preds = %2
  %55 = load i8, i8* %9, align 1
  store i8 %55, i8* %7, align 1
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  %58 = load i8, i8* %56, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 39
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* null, i8** %3, align 8
  br label %67

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = load i8, i8* %7, align 1
  %65 = load i8*, i8** %5, align 8
  store i8 %64, i8* %65, align 1
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %61, %52, %31, %17
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
