; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getIntelProcessorTypeAndSubtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_cpu_model.c_getIntelProcessorTypeAndSubtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_CORE2 = common dso_local global i32 0, align 4
@INTEL_COREI7 = common dso_local global i32 0, align 4
@INTEL_COREI7_NEHALEM = common dso_local global i32 0, align 4
@INTEL_COREI7_WESTMERE = common dso_local global i32 0, align 4
@INTEL_COREI7_SANDYBRIDGE = common dso_local global i32 0, align 4
@INTEL_COREI7_IVYBRIDGE = common dso_local global i32 0, align 4
@INTEL_COREI7_HASWELL = common dso_local global i32 0, align 4
@INTEL_COREI7_BROADWELL = common dso_local global i32 0, align 4
@INTEL_COREI7_SKYLAKE = common dso_local global i32 0, align 4
@FEATURE_AVX512VNNI = common dso_local global i32 0, align 4
@INTEL_COREI7_CASCADELAKE = common dso_local global i32 0, align 4
@INTEL_COREI7_SKYLAKE_AVX512 = common dso_local global i32 0, align 4
@INTEL_COREI7_CANNONLAKE = common dso_local global i32 0, align 4
@INTEL_COREI7_ICELAKE_CLIENT = common dso_local global i32 0, align 4
@INTEL_COREI7_ICELAKE_SERVER = common dso_local global i32 0, align 4
@INTEL_BONNELL = common dso_local global i32 0, align 4
@INTEL_SILVERMONT = common dso_local global i32 0, align 4
@INTEL_GOLDMONT = common dso_local global i32 0, align 4
@INTEL_GOLDMONT_PLUS = common dso_local global i32 0, align 4
@INTEL_TREMONT = common dso_local global i32 0, align 4
@INTEL_KNL = common dso_local global i32 0, align 4
@INTEL_KNM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32*, i32*)* @getIntelProcessorTypeAndSubtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getIntelProcessorTypeAndSubtype(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %115

18:                                               ; preds = %7
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %114 [
    i32 6, label %20
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %112 [
    i32 15, label %22
    i32 22, label %22
    i32 23, label %22
    i32 29, label %22
    i32 26, label %25
    i32 30, label %25
    i32 31, label %25
    i32 46, label %25
    i32 37, label %30
    i32 44, label %30
    i32 47, label %30
    i32 42, label %35
    i32 45, label %35
    i32 58, label %40
    i32 62, label %40
    i32 60, label %45
    i32 63, label %45
    i32 69, label %45
    i32 70, label %45
    i32 61, label %50
    i32 71, label %50
    i32 79, label %50
    i32 86, label %50
    i32 78, label %55
    i32 94, label %55
    i32 142, label %55
    i32 158, label %55
    i32 85, label %60
    i32 102, label %76
    i32 125, label %81
    i32 126, label %81
    i32 106, label %86
    i32 108, label %86
    i32 28, label %91
    i32 38, label %91
    i32 39, label %91
    i32 53, label %91
    i32 54, label %91
    i32 55, label %94
    i32 74, label %94
    i32 77, label %94
    i32 90, label %94
    i32 93, label %94
    i32 76, label %94
    i32 92, label %97
    i32 95, label %97
    i32 122, label %100
    i32 134, label %103
    i32 87, label %106
    i32 133, label %109
  ]

22:                                               ; preds = %20, %20, %20, %20
  %23 = load i32, i32* @INTEL_CORE2, align 4
  %24 = load i32*, i32** %13, align 8
  store i32 %23, i32* %24, align 4
  br label %113

25:                                               ; preds = %20, %20, %20, %20
  %26 = load i32, i32* @INTEL_COREI7, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @INTEL_COREI7_NEHALEM, align 4
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  br label %113

30:                                               ; preds = %20, %20, %20
  %31 = load i32, i32* @INTEL_COREI7, align 4
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @INTEL_COREI7_WESTMERE, align 4
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  br label %113

35:                                               ; preds = %20, %20
  %36 = load i32, i32* @INTEL_COREI7, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @INTEL_COREI7_SANDYBRIDGE, align 4
  %39 = load i32*, i32** %14, align 8
  store i32 %38, i32* %39, align 4
  br label %113

40:                                               ; preds = %20, %20
  %41 = load i32, i32* @INTEL_COREI7, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @INTEL_COREI7_IVYBRIDGE, align 4
  %44 = load i32*, i32** %14, align 8
  store i32 %43, i32* %44, align 4
  br label %113

45:                                               ; preds = %20, %20, %20, %20
  %46 = load i32, i32* @INTEL_COREI7, align 4
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @INTEL_COREI7_HASWELL, align 4
  %49 = load i32*, i32** %14, align 8
  store i32 %48, i32* %49, align 4
  br label %113

50:                                               ; preds = %20, %20, %20, %20
  %51 = load i32, i32* @INTEL_COREI7, align 4
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @INTEL_COREI7_BROADWELL, align 4
  %54 = load i32*, i32** %14, align 8
  store i32 %53, i32* %54, align 4
  br label %113

55:                                               ; preds = %20, %20, %20, %20
  %56 = load i32, i32* @INTEL_COREI7, align 4
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @INTEL_COREI7_SKYLAKE, align 4
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  br label %113

60:                                               ; preds = %20
  %61 = load i32, i32* @INTEL_COREI7, align 4
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @FEATURE_AVX512VNNI, align 4
  %65 = sub nsw i32 %64, 32
  %66 = shl i32 1, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @INTEL_COREI7_CASCADELAKE, align 4
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  br label %75

72:                                               ; preds = %60
  %73 = load i32, i32* @INTEL_COREI7_SKYLAKE_AVX512, align 4
  %74 = load i32*, i32** %14, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %113

76:                                               ; preds = %20
  %77 = load i32, i32* @INTEL_COREI7, align 4
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @INTEL_COREI7_CANNONLAKE, align 4
  %80 = load i32*, i32** %14, align 8
  store i32 %79, i32* %80, align 4
  br label %113

81:                                               ; preds = %20, %20
  %82 = load i32, i32* @INTEL_COREI7, align 4
  %83 = load i32*, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @INTEL_COREI7_ICELAKE_CLIENT, align 4
  %85 = load i32*, i32** %14, align 8
  store i32 %84, i32* %85, align 4
  br label %113

86:                                               ; preds = %20, %20
  %87 = load i32, i32* @INTEL_COREI7, align 4
  %88 = load i32*, i32** %13, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @INTEL_COREI7_ICELAKE_SERVER, align 4
  %90 = load i32*, i32** %14, align 8
  store i32 %89, i32* %90, align 4
  br label %113

91:                                               ; preds = %20, %20, %20, %20, %20
  %92 = load i32, i32* @INTEL_BONNELL, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %113

94:                                               ; preds = %20, %20, %20, %20, %20, %20
  %95 = load i32, i32* @INTEL_SILVERMONT, align 4
  %96 = load i32*, i32** %13, align 8
  store i32 %95, i32* %96, align 4
  br label %113

97:                                               ; preds = %20, %20
  %98 = load i32, i32* @INTEL_GOLDMONT, align 4
  %99 = load i32*, i32** %13, align 8
  store i32 %98, i32* %99, align 4
  br label %113

100:                                              ; preds = %20
  %101 = load i32, i32* @INTEL_GOLDMONT_PLUS, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  br label %113

103:                                              ; preds = %20
  %104 = load i32, i32* @INTEL_TREMONT, align 4
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  br label %113

106:                                              ; preds = %20
  %107 = load i32, i32* @INTEL_KNL, align 4
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  br label %113

109:                                              ; preds = %20
  %110 = load i32, i32* @INTEL_KNM, align 4
  %111 = load i32*, i32** %13, align 8
  store i32 %110, i32* %111, align 4
  br label %113

112:                                              ; preds = %20
  br label %113

113:                                              ; preds = %112, %109, %106, %103, %100, %97, %94, %91, %86, %81, %76, %75, %55, %50, %45, %40, %35, %30, %25, %22
  br label %114

114:                                              ; preds = %18, %113
  br label %115

115:                                              ; preds = %17, %114
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
