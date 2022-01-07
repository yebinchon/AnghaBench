; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_secondary_input_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_secondary_input_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_REGS = common dso_local global i32 0, align 4
@FP_REGS = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@CC_REGS = common dso_local global i32 0, align 4
@GENERAL_REGS = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_secondary_input_reload_class(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @s390_plus_operand(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ADDR_REGS, align 4
  store i32 %13, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load i32, i32* @FP_REGS, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @reg_classes_intersect_p(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TFmode, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @MEM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @XEXP(i32 %29, i32 0)
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @PLUS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = call i32 @XEXP(i32 %36, i32 1)
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @CONST_INT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @XEXP(i32 %42, i32 0)
  %44 = call i32 @XEXP(i32 %43, i32 1)
  %45 = call i64 @INTVAL(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @GET_MODE_SIZE(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = sub nsw i64 %48, 1
  %50 = call i32 @DISP_IN_RANGE(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ADDR_REGS, align 4
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %41, %34, %28, %23, %19, %14
  %55 = load i32, i32* @CC_REGS, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i64 @reg_classes_intersect_p(i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @GENERAL_REGS, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @NO_REGS, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %59, %52, %12
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @s390_plus_operand(i32, i32) #1

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
