; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_simplify_logical.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_simplify_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @simplify_logical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simplify_logical(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_MODE(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @XEXP(i32 %13, i32 0)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @GET_CODE(i32 %17)
  switch i32 %18, label %110 [
    i32 129, label %19
    i32 128, label %85
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GET_CODE(i32 %20)
  %22 = load i32, i32* @CONST_INT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @GET_MODE_BITSIZE(i32 %25)
  %27 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @INTVAL(i32 %30)
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @INTVAL(i32 %37)
  %39 = call i32 @simplify_and_const_int(i32 %34, i32 %35, i32 %36, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @GET_CODE(i32 %40)
  %42 = icmp ne i32 %41, 129
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  store i32 %44, i32* %2, align 4
  br label %114

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @XEXP(i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @XEXP(i32 %48, i32 1)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %29, %19
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @GET_CODE(i32 %51)
  %53 = icmp eq i32 %52, 128
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @GET_CODE(i32 %55)
  %57 = load i32, i32* @XOR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54, %50
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @distribute_and_simplify_rtx(i32 %60, i32 0)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %114

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @GET_CODE(i32 %68)
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %76, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @GET_CODE(i32 %72)
  %74 = load i32, i32* @XOR, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @distribute_and_simplify_rtx(i32 %77, i32 1)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %2, align 4
  br label %114

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %71
  br label %112

85:                                               ; preds = %1
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @GET_CODE(i32 %86)
  %88 = icmp eq i32 %87, 129
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @distribute_and_simplify_rtx(i32 %90, i32 0)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %114

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %85
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @GET_CODE(i32 %98)
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @distribute_and_simplify_rtx(i32 %102, i32 1)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %2, align 4
  br label %114

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %97
  br label %112

110:                                              ; preds = %1
  %111 = call i32 (...) @gcc_unreachable()
  br label %112

112:                                              ; preds = %110, %109, %84
  %113 = load i32, i32* %3, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %112, %106, %94, %81, %64, %43
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @simplify_and_const_int(i32, i32, i32, i32) #1

declare dso_local i32 @distribute_and_simplify_rtx(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
