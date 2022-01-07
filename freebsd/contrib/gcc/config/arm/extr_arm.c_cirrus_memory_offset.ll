; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_cirrus_memory_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_cirrus_memory_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_in_progress = common dso_local global i64 0, align 8
@reload_completed = common dso_local global i64 0, align 8
@frame_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4
@virtual_outgoing_args_rtx = common dso_local global i32 0, align 4
@virtual_stack_dynamic_rtx = common dso_local global i32 0, align 4
@virtual_stack_vars_rtx = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cirrus_memory_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @reload_in_progress, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @reload_completed, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @frame_pointer_rtx, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @reg_mentioned_p(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @arg_pointer_rtx, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @reg_mentioned_p(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @virtual_incoming_args_rtx, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @reg_mentioned_p(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @virtual_outgoing_args_rtx, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @reg_mentioned_p(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @virtual_stack_dynamic_rtx, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @reg_mentioned_p(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @virtual_stack_vars_rtx, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @reg_mentioned_p(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30, %25, %20, %15, %10
  store i32 0, i32* %2, align 4
  br label %80

41:                                               ; preds = %35, %7, %1
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @GET_CODE(i32 %42)
  %44 = load i64, i64* @MEM, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @XEXP(i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @GET_CODE(i32 %49)
  %51 = load i64, i64* @REG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %80

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @GET_CODE(i32 %55)
  %57 = load i64, i64* @PLUS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @XEXP(i32 %60, i32 0)
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @REG, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = load i32, i32* @VOIDmode, align 4
  %69 = call i64 @REG_MODE_OK_FOR_BASE_P(i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @XEXP(i32 %72, i32 1)
  %74 = call i64 @GET_CODE(i32 %73)
  %75 = load i64, i64* @CONST_INT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %2, align 4
  br label %80

78:                                               ; preds = %71, %65, %59, %54
  br label %79

79:                                               ; preds = %78, %41
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %77, %53, %40
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_MODE_OK_FOR_BASE_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
