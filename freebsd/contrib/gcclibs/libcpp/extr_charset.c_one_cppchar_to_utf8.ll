; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_cppchar_to_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_charset.c_one_cppchar_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one_cppchar_to_utf8.masks = internal constant [6 x i32] [i32 0, i32 192, i32 224, i32 240, i32 248, i32 252], align 16
@one_cppchar_to_utf8.limits = internal constant [6 x i32] [i32 128, i32 224, i32 240, i32 248, i32 252, i32 254], align 16
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i64*)* @one_cppchar_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_cppchar_to_utf8(i32 %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 6
  store i32* %12, i32** %10, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  store i64 1, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %20, i32** %10, align 8
  store i32 %18, i32* %20, align 4
  br label %54

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 63
  %25 = or i32 %24, 128
  %26 = load i32*, i32** %10, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 -1
  store i32* %27, i32** %10, align 8
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 6
  store i32 %29, i32* %5, align 4
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 63
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds [6 x i32], [6 x i32]* @one_cppchar_to_utf8.limits, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %35, %32
  %44 = phi i1 [ true, %32 ], [ %42, %35 ]
  br i1 %44, label %22, label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %5, align 4
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, 1
  %49 = getelementptr inbounds [6 x i32], [6 x i32]* @one_cppchar_to_utf8.masks, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %46, %50
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 -1
  store i32* %53, i32** %10, align 8
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %45, %17
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @E2BIG, align 4
  store i32 %60, i32* %4, align 4
  br label %79

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %66, %61
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 6
  %65 = icmp ult i32* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %10, align 8
  %69 = load i32, i32* %67, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  br label %62

72:                                               ; preds = %62
  %73 = load i64, i64* %8, align 8
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, %73
  store i64 %76, i64* %74, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32**, i32*** %6, align 8
  store i32* %77, i32** %78, align 8
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %59
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
