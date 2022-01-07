; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decShiftToMost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decShiftToMost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @decShiftToMost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decShiftToMost(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %4, align 8
  br label %120

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @DECDPUN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @powers, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %27, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add i64 %34, %35
  store i64 %36, i64* %4, align 8
  br label %120

37:                                               ; preds = %19
  %38 = load i64, i64* @DECDPUN, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DECDPUN, align 8
  %41 = urem i64 %39, %40
  %42 = sub i64 %38, %41
  %43 = load i64, i64* @DECDPUN, align 8
  %44 = urem i64 %42, %43
  store i64 %44, i64* %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @D2U(i64 %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @D2U(i64 %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = getelementptr inbounds i32, i32* %57, i64 -1
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @D2U(i64 %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32* %63, i32** %8, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %100, %37
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = icmp uge i32* %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %64
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @QUOT10(i32 %70, i64 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32*, i32** @powers, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = sub nsw i32 %74, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ule i32* %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %68
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %68
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** @powers, align 8
  %94 = load i64, i64* @DECDPUN, align 8
  %95 = load i64, i64* %12, align 8
  %96 = sub i64 %94, %95
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %92, %98
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %91
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 -1
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 -1
  store i32* %104, i32** %8, align 8
  br label %64

105:                                              ; preds = %64
  br label %106

106:                                              ; preds = %113, %105
  %107 = load i32*, i32** %8, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = icmp uge i32* %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %115, i32** %8, align 8
  br label %106

116:                                              ; preds = %106
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %116, %25, %17
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i32 @D2U(i64) #1

declare dso_local i32 @QUOT10(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
