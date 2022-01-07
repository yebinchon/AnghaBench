; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_form_sum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_form_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @form_sum(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GET_MODE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @VOIDmode, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  store i32 %15, i32* %7, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @VOIDmode, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @Pmode, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @GET_CODE(i32 %23)
  %25 = load i64, i64* @CONST_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @INTVAL(i32 %29)
  %31 = call i32 @plus_constant(i32 %28, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %124

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @CONST_INT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @INTVAL(i32 %39)
  %41 = call i32 @plus_constant(i32 %38, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %124

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @CONSTANT_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = call i64 @GET_CODE(i32 %53)
  %55 = load i64, i64* @PLUS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XEXP(i32 %58, i32 1)
  %60 = call i64 @CONSTANT_P(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @XEXP(i32 %63, i32 0)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @XEXP(i32 %65, i32 1)
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @form_sum(i32 %66, i32 %67)
  %69 = call i32 @form_sum(i32 %64, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %124

70:                                               ; preds = %57, %52
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @GET_CODE(i32 %71)
  %73 = load i64, i64* @PLUS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @XEXP(i32 %76, i32 1)
  %78 = call i64 @CONSTANT_P(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @XEXP(i32 %82, i32 0)
  %84 = call i32 @form_sum(i32 %81, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @XEXP(i32 %85, i32 1)
  %87 = call i32 @form_sum(i32 %84, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %124

88:                                               ; preds = %75, %70
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @CONSTANT_P(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %119

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = call i64 @CONSTANT_P(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %119

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @GET_CODE(i32 %97)
  %99 = load i64, i64* @CONST, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @XEXP(i32 %102, i32 0)
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @GET_CODE(i32 %105)
  %107 = load i64, i64* @CONST, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @XEXP(i32 %110, i32 0)
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* @VOIDmode, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @gen_rtx_PLUS(i32 %114, i32 %115, i32 %116)
  %118 = call i32 @gen_rtx_CONST(i32 %113, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %124

119:                                              ; preds = %92, %88
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @gen_rtx_PLUS(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %119, %112, %80, %62, %37, %27
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @gen_rtx_CONST(i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
