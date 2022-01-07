; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_is_longcall_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_is_longcall_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@CALL_SHORT = common dso_local global i32 0, align 4
@TARGET_LONG_CALLS = common dso_local global i64 0, align 8
@flag_function_sections = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@CALL_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_is_longcall_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @MEM, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %64

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @XEXP(i32 %17, i32 0)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @SYMBOL_REF, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %64

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @CALL_SHORT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %64

31:                                               ; preds = %25
  %32 = load i64, i64* @TARGET_LONG_CALLS, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64, i64* @flag_function_sections, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @current_function_decl, align 4
  %39 = call i64 @DECL_SECTION_NAME(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34
  store i32 1, i32* %4, align 4
  br label %64

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @current_file_function_operand(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %64

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CALL_LONG, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @XSTR(i32 %54, i32 0)
  %56 = call i64 @ENCODED_LONG_CALL_ATTR_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* @TARGET_LONG_CALLS, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %58, %53, %48
  %62 = phi i1 [ true, %53 ], [ true, %48 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61, %47, %41, %30, %24, %15
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i32) #1

declare dso_local i64 @current_file_function_operand(i32) #1

declare dso_local i64 @ENCODED_LONG_CALL_ATTR_P(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
