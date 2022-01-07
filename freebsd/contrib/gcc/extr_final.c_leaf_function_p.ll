; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_leaf_function_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_leaf_function_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_profile = common dso_local global i64 0, align 8
@profile_arc_flag = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i64 0, align 8
@current_function_epilogue_delay_list = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leaf_function_p() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @current_function_profile, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @profile_arc_flag, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %95

10:                                               ; preds = %6
  %11 = call i64 (...) @get_insns()
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %48, %10
  %13 = load i64, i64* %2, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %12
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @CALL_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @SIBLING_CALL_P(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %95

24:                                               ; preds = %19, %15
  %25 = load i64, i64* %2, align 8
  %26 = call i64 @NONJUMP_INSN_P(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @PATTERN(i64 %29)
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @SEQUENCE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @PATTERN(i64 %35)
  %37 = call i64 @XVECEXP(i32 %36, i32 0, i32 0)
  %38 = call i64 @CALL_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @PATTERN(i64 %41)
  %43 = call i64 @XVECEXP(i32 %42, i32 0, i32 0)
  %44 = call i32 @SIBLING_CALL_P(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %1, align 4
  br label %95

47:                                               ; preds = %40, %34, %28, %24
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @NEXT_INSN(i64 %49)
  store i64 %50, i64* %2, align 8
  br label %12

51:                                               ; preds = %12
  %52 = load i64, i64* @current_function_epilogue_delay_list, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %91, %51
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %53
  %57 = load i64, i64* %3, align 8
  %58 = call i64 @XEXP(i64 %57, i32 0)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = call i64 @CALL_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i64, i64* %2, align 8
  %64 = call i32 @SIBLING_CALL_P(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  store i32 0, i32* %1, align 4
  br label %95

67:                                               ; preds = %62, %56
  %68 = load i64, i64* %2, align 8
  %69 = call i64 @NONJUMP_INSN_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load i64, i64* %2, align 8
  %73 = call i32 @PATTERN(i64 %72)
  %74 = call i64 @GET_CODE(i32 %73)
  %75 = load i64, i64* @SEQUENCE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i64, i64* %2, align 8
  %79 = call i32 @PATTERN(i64 %78)
  %80 = call i64 @XVECEXP(i32 %79, i32 0, i32 0)
  %81 = call i64 @CALL_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i64, i64* %2, align 8
  %85 = call i32 @PATTERN(i64 %84)
  %86 = call i64 @XVECEXP(i32 %85, i32 0, i32 0)
  %87 = call i32 @SIBLING_CALL_P(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 0, i32* %1, align 4
  br label %95

90:                                               ; preds = %83, %77, %71, %67
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %3, align 8
  %93 = call i64 @XEXP(i64 %92, i32 1)
  store i64 %93, i64* %3, align 8
  br label %53

94:                                               ; preds = %53
  store i32 1, i32* %1, align 4
  br label %95

95:                                               ; preds = %94, %89, %66, %46, %23, %9
  %96 = load i32, i32* %1, align 4
  ret i32 %96
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @SIBLING_CALL_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
