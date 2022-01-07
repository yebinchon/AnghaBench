; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_arg_partial_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_arg_partial_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ARCH32 = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@SPARC_INT_ARG_MAX = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4
@MODE_COMPLEX_INT = common dso_local global i64 0, align 8
@MODE_COMPLEX_FLOAT = common dso_local global i64 0, align 8
@TARGET_FPU = common dso_local global i64 0, align 8
@SPARC_FP_ARG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32)* @sparc_arg_partial_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_arg_partial_bytes(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @function_arg_slotno(i32* %14, i32 %15, i64 %16, i32 %17, i32 0, i32* %11, i32* %12)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %121

22:                                               ; preds = %4
  %23 = load i64, i64* @TARGET_ARCH32, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BLKmode, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @int_size_in_bytes(i64 %31)
  %33 = call i32 @ROUND_ADVANCE(i32 %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @GET_MODE_SIZE(i32 %35)
  %37 = call i32 @ROUND_ADVANCE(i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %33, %30 ], [ %37, %34 ]
  %40 = add nsw i32 %26, %39
  %41 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @UNITS_PER_WORD, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %5, align 4
  br label %121

49:                                               ; preds = %38
  br label %120

50:                                               ; preds = %22
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @AGGREGATE_TYPE_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @int_size_in_bytes(i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @UNITS_PER_WORD, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %69, i32* %5, align 4
  br label %121

70:                                               ; preds = %63, %57
  br label %119

71:                                               ; preds = %53, %50
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @GET_MODE_CLASS(i32 %72)
  %74 = load i64, i64* @MODE_COMPLEX_INT, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = call i64 @GET_MODE_CLASS(i32 %77)
  %79 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load i64, i64* @TARGET_FPU, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %84, %81, %71
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @GET_MODE_SIZE(i32 %88)
  %90 = load i32, i32* @UNITS_PER_WORD, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @SPARC_INT_ARG_MAX, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %98, i32* %5, align 4
  br label %121

99:                                               ; preds = %92, %87
  br label %118

100:                                              ; preds = %84, %76
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @GET_MODE_CLASS(i32 %101)
  %103 = load i64, i64* @MODE_COMPLEX_FLOAT, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @GET_MODE_SIZE(i32 %107)
  %109 = load i32, i32* @UNITS_PER_WORD, align 4
  %110 = sdiv i32 %108, %109
  %111 = add nsw i32 %106, %110
  %112 = load i32, i32* @SPARC_FP_ARG_MAX, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @UNITS_PER_WORD, align 4
  store i32 %115, i32* %5, align 4
  br label %121

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %70
  br label %120

120:                                              ; preds = %119, %49
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %114, %97, %68, %43, %21
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @function_arg_slotno(i32*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @ROUND_ADVANCE(i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
