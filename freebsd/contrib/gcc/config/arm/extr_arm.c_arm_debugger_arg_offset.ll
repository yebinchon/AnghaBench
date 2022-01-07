; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_debugger_arg_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_debugger_arg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i64 0, align 8
@TARGET_THUMB = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i64 0, align 8
@INSN = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"unable to compute real location of stacked parameter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_debugger_arg_offset(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @GET_CODE(i64 %11)
  %13 = load i64, i64* @REG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %111

16:                                               ; preds = %10
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @REGNO(i64 %17)
  %19 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %111

23:                                               ; preds = %16
  %24 = load i64, i64* @TARGET_THUMB, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @frame_pointer_needed, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @REGNO(i64 %30)
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @SP_REGNUM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %111

36:                                               ; preds = %29, %26
  %37 = call i64 (...) @get_insns()
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %99, %36
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @GET_CODE(i64 %42)
  %44 = load i64, i64* @INSN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @PATTERN(i64 %47)
  %49 = call i64 @GET_CODE(i64 %48)
  %50 = load i64, i64* @SET, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @PATTERN(i64 %53)
  %55 = call i64 @XEXP(i64 %54, i32 0)
  %56 = call i32 @REGNO(i64 %55)
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @REGNO(i64 %57)
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @PATTERN(i64 %61)
  %63 = call i64 @XEXP(i64 %62, i32 1)
  %64 = call i64 @GET_CODE(i64 %63)
  %65 = load i64, i64* @PLUS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %60
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @PATTERN(i64 %68)
  %70 = call i64 @XEXP(i64 %69, i32 1)
  %71 = call i64 @XEXP(i64 %70, i32 0)
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = load i64, i64* @REG, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @PATTERN(i64 %76)
  %78 = call i64 @XEXP(i64 %77, i32 1)
  %79 = call i64 @XEXP(i64 %78, i32 0)
  %80 = call i32 @REGNO(i64 %79)
  %81 = load i64, i64* @HARD_FRAME_POINTER_REGNUM, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @PATTERN(i64 %85)
  %87 = call i64 @XEXP(i64 %86, i32 1)
  %88 = call i64 @XEXP(i64 %87, i32 1)
  %89 = call i64 @GET_CODE(i64 %88)
  %90 = load i64, i64* @CONST_INT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @PATTERN(i64 %93)
  %95 = call i64 @XEXP(i64 %94, i32 1)
  %96 = call i64 @XEXP(i64 %95, i32 1)
  %97 = call i32 @INTVAL(i64 %96)
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %84, %75, %67, %60, %52, %46, %41
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %6, align 8
  %101 = call i64 @NEXT_INSN(i64 %100)
  store i64 %101, i64* %6, align 8
  br label %38

102:                                              ; preds = %92, %38
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @debug_rtx(i64 %106)
  %108 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 8, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %109, %35, %22, %15, %9
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @debug_rtx(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
