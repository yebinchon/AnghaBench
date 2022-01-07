; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_secondary_output_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_secondary_output_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@TImode = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@GENERAL_REGS = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@ADDR_REGS = common dso_local global i32 0, align 4
@FP_REGS = common dso_local global i32 0, align 4
@CC_REGS = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_secondary_output_reload_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @TARGET_64BIT, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TImode, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TFmode, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %69

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @DImode, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DFmode, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22, %18, %14, %10
  %27 = load i32, i32* @GENERAL_REGS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @reg_classes_intersect_p(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @GET_CODE(i32 %32)
  %34 = load i64, i64* @MEM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i64 @GET_CODE(i32 %38)
  %40 = load i64, i64* @PLUS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @XEXP(i32 %43, i32 0)
  %45 = call i32 @XEXP(i32 %44, i32 0)
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @PLUS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @XEXP(i32 %50, i32 0)
  %52 = call i32 @XEXP(i32 %51, i32 1)
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @CONST_INT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @XEXP(i32 %57, i32 0)
  %59 = call i32 @XEXP(i32 %58, i32 1)
  %60 = call i64 @INTVAL(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @GET_MODE_SIZE(i32 %61)
  %63 = add nsw i64 %60, %62
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @DISP_IN_RANGE(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* @ADDR_REGS, align 4
  store i32 %68, i32* %4, align 4
  br label %118

69:                                               ; preds = %56, %49, %42, %36, %31, %26, %22, %14
  %70 = load i32, i32* @FP_REGS, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @reg_classes_intersect_p(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @TFmode, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %109

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @GET_CODE(i32 %79)
  %81 = load i64, i64* @MEM, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %78
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @XEXP(i32 %84, i32 0)
  %86 = call i64 @GET_CODE(i32 %85)
  %87 = load i64, i64* @PLUS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = call i32 @XEXP(i32 %91, i32 1)
  %93 = call i64 @GET_CODE(i32 %92)
  %94 = load i64, i64* @CONST_INT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @XEXP(i32 %97, i32 0)
  %99 = call i32 @XEXP(i32 %98, i32 1)
  %100 = call i64 @INTVAL(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @GET_MODE_SIZE(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = sub nsw i64 %103, 1
  %105 = call i32 @DISP_IN_RANGE(i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @ADDR_REGS, align 4
  store i32 %108, i32* %4, align 4
  br label %118

109:                                              ; preds = %96, %89, %83, %78, %74, %69
  %110 = load i32, i32* @CC_REGS, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i64 @reg_classes_intersect_p(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @GENERAL_REGS, align 4
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @NO_REGS, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %114, %107, %67
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @reg_classes_intersect_p(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @DISP_IN_RANGE(i64) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
