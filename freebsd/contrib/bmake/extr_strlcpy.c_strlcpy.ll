; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_strlcpy.c_strlcpy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_strlcpy.c_strlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strlcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i64 0, i64* %4, align 8
  br label %66

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %9, align 8
  %31 = load i8, i8* %29, align 1
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %8, align 8
  store i8 %31, i8* %32, align 1
  %34 = sext i8 %31 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %28, label %42

42:                                               ; preds = %38, %36
  br label %43

43:                                               ; preds = %42, %23, %20
  %44 = load i64, i64* %10, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %57, %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  %55 = load i8, i8* %53, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %52

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub nsw i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %59, %19
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
