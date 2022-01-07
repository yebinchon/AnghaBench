; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getAMDProcessorTypeAndSubtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getAMDProcessorTypeAndSubtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMDFAM10H = common dso_local global i32 0, align 4
@AMDFAM10H_BARCELONA = common dso_local global i32 0, align 4
@AMDFAM10H_SHANGHAI = common dso_local global i32 0, align 4
@AMDFAM10H_ISTANBUL = common dso_local global i32 0, align 4
@AMD_BTVER1 = common dso_local global i32 0, align 4
@AMDFAM15H = common dso_local global i32 0, align 4
@AMDFAM15H_BDVER4 = common dso_local global i32 0, align 4
@AMDFAM15H_BDVER3 = common dso_local global i32 0, align 4
@AMDFAM15H_BDVER2 = common dso_local global i32 0, align 4
@AMDFAM15H_BDVER1 = common dso_local global i32 0, align 4
@AMD_BTVER2 = common dso_local global i32 0, align 4
@AMDFAM17H = common dso_local global i32 0, align 4
@AMDFAM17H_ZNVER2 = common dso_local global i32 0, align 4
@AMDFAM17H_ZNVER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*)* @getAMDProcessorTypeAndSubtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getAMDProcessorTypeAndSubtype(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %91 [
    i32 16, label %14
    i32 20, label %28
    i32 21, label %31
    i32 22, label %70
    i32 23, label %73
  ]

14:                                               ; preds = %6
  %15 = load i32, i32* @AMDFAM10H, align 4
  %16 = load i32*, i32** %11, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %27 [
    i32 2, label %18
    i32 4, label %21
    i32 8, label %24
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @AMDFAM10H_BARCELONA, align 4
  %20 = load i32*, i32** %12, align 8
  store i32 %19, i32* %20, align 4
  br label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @AMDFAM10H_SHANGHAI, align 4
  %23 = load i32*, i32** %12, align 8
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @AMDFAM10H_ISTANBUL, align 4
  %26 = load i32*, i32** %12, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %14, %24, %21, %18
  br label %92

28:                                               ; preds = %6
  %29 = load i32, i32* @AMD_BTVER1, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  br label %92

31:                                               ; preds = %6
  %32 = load i32, i32* @AMDFAM15H, align 4
  %33 = load i32*, i32** %11, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp uge i32 %34, 96
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = icmp ule i32 %37, 127
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @AMDFAM15H_BDVER4, align 4
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  br label %92

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp uge i32 %43, 48
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ule i32 %46, 63
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @AMDFAM15H_BDVER3, align 4
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  br label %92

51:                                               ; preds = %45, %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp uge i32 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp ule i32 %55, 31
  br i1 %56, label %60, label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %54
  %61 = load i32, i32* @AMDFAM15H_BDVER2, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  br label %92

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = icmp ule i32 %64, 15
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @AMDFAM15H_BDVER1, align 4
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  br label %92

69:                                               ; preds = %63
  br label %92

70:                                               ; preds = %6
  %71 = load i32, i32* @AMD_BTVER2, align 4
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  br label %92

73:                                               ; preds = %6
  %74 = load i32, i32* @AMDFAM17H, align 4
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp uge i32 %76, 48
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = icmp ule i32 %79, 63
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @AMDFAM17H_ZNVER2, align 4
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %92

84:                                               ; preds = %78, %73
  %85 = load i32, i32* %8, align 4
  %86 = icmp ule i32 %85, 15
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @AMDFAM17H_ZNVER1, align 4
  %89 = load i32*, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  br label %92

90:                                               ; preds = %84
  br label %92

91:                                               ; preds = %6
  br label %92

92:                                               ; preds = %91, %90, %87, %81, %70, %69, %66, %60, %48, %39, %28, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
