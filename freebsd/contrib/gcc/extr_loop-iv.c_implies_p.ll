; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_implies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_implies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EQ = common dso_local global i64 0, align 8
@const_true_rtx = common dso_local global i64 0, align 8
@GT = common dso_local global i64 0, align 8
@LT = common dso_local global i64 0, align 8
@GE = common dso_local global i64 0, align 8
@LE = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @implies_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @implies_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @EQ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @XEXP(i64 %17, i32 0)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @XEXP(i64 %19, i32 1)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @REG_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @simplify_replace_rtx(i64 %25, i64 %26, i64 %27)
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @const_true_rtx, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %139

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @REG_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @simplify_replace_rtx(i64 %39, i64 %40, i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @const_true_rtx, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %139

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %34
  br label %49

49:                                               ; preds = %48, %2
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @GET_CODE(i64 %50)
  %52 = load i64, i64* @GT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  %56 = call i64 @GET_CODE(i64 %55)
  %57 = load i64, i64* @LT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %138

59:                                               ; preds = %54, %49
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @GET_CODE(i64 %60)
  %62 = load i64, i64* @GE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @GET_CODE(i64 %65)
  %67 = load i64, i64* @LE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %138

69:                                               ; preds = %64, %59
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @XEXP(i64 %70, i32 0)
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @XEXP(i64 %72, i32 1)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i64 @XEXP(i64 %74, i32 0)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @XEXP(i64 %76, i32 1)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @GET_CODE(i64 %78)
  %80 = load i64, i64* @GT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %69
  %83 = load i64, i64* %6, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %10, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %82, %69
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @GET_CODE(i64 %87)
  %89 = load i64, i64* @GE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i64, i64* %8, align 8
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %10, align 8
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @GET_MODE(i64 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @GET_MODE(i64 %99)
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @VOIDmode, align 4
  store i32 %103, i32* %11, align 4
  br label %119

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @VOIDmode, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @GET_MODE(i64 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @GET_MODE(i64 %112)
  %114 = icmp ne i32 %111, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* @VOIDmode, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %115, %108
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @SCALAR_INT_MODE_P(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %119
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %9, align 8
  %126 = call i64 @rtx_equal_p(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %123
  %129 = load i32, i32* @MINUS, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i64 @simplify_gen_binary(i32 %129, i32 %130, i64 %131, i64 %132)
  %134 = load i64, i64* @const1_rtx, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 1, i32* %3, align 4
  br label %139

137:                                              ; preds = %128, %123, %119
  br label %138

138:                                              ; preds = %137, %64, %54
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %136, %46, %32
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @simplify_replace_rtx(i64, i64, i64) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @SCALAR_INT_MODE_P(i32) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
