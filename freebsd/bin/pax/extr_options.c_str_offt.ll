; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_str_offt.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_str_offt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUAD_MAX = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @str_offt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @str_offt(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strtoq(i8* %7, i8** %4, i32 0)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @QUAD_MAX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12, %1
  store i64 0, i64* %2, align 8
  br label %88

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %68 [
    i32 98, label %24
    i32 107, label %35
    i32 109, label %46
    i32 119, label %57
  ]

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = mul nsw i64 %26, 512
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i64 0, i64* %2, align 8
  br label %88

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %68

35:                                               ; preds = %20
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul nsw i64 %37, 1024
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i64 0, i64* %2, align 8
  br label %88

43:                                               ; preds = %35
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %68

46:                                               ; preds = %20
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = mul nsw i64 %48, 1048576
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i64 0, i64* %2, align 8
  br label %88

54:                                               ; preds = %46
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  br label %68

57:                                               ; preds = %20
  %58 = load i64, i64* %5, align 8
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = mul i64 %59, 4
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i64 0, i64* %2, align 8
  br label %88

65:                                               ; preds = %57
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  br label %68

68:                                               ; preds = %20, %65, %54, %43, %32
  %69 = load i8*, i8** %4, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %85 [
    i32 0, label %72
    i32 42, label %73
    i32 120, label %73
  ]

72:                                               ; preds = %68
  br label %86

73:                                               ; preds = %68, %68
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %6, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i64 @str_offt(i8* %76)
  %78 = load i64, i64* %5, align 8
  %79 = mul nsw i64 %78, %77
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i64 0, i64* %2, align 8
  br label %88

84:                                               ; preds = %73
  br label %86

85:                                               ; preds = %68
  store i64 0, i64* %2, align 8
  br label %88

86:                                               ; preds = %84, %72
  %87 = load i64, i64* %5, align 8
  store i64 %87, i64* %2, align 8
  br label %88

88:                                               ; preds = %86, %85, %83, %64, %53, %42, %31, %19
  %89 = load i64, i64* %2, align 8
  ret i64 %89
}

declare dso_local i64 @strtoq(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
