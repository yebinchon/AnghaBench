; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_regs_live_at_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_mark_regs_live_at_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HAVE_epilogue = common dso_local global i64 0, align 8
@epilogue_completed = common dso_local global i64 0, align 8
@EXIT_IGNORE_STACK = common dso_local global i32 0, align 4
@FRAME_POINTER_REQUIRED = common dso_local global i32 0, align 4
@current_function_calls_alloca = common dso_local global i32 0, align 4
@flag_omit_frame_pointer = common dso_local global i64 0, align 8
@current_function_sp_is_unchanging = common dso_local global i64 0, align 8
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@reload_completed = common dso_local global i64 0, align 8
@frame_pointer_needed = common dso_local global i64 0, align 8
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@PIC_OFFSET_TABLE_REGNUM = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i64* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@global_regs = common dso_local global i64* null, align 8
@regs_ever_live = common dso_local global i64* null, align 8
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@EH_RETURN_HANDLER_RTX = common dso_local global i64 0, align 8
@EH_RETURN_STACKADJ_RTX = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@current_function_calls_eh_return = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mark_regs_live_at_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_regs_live_at_end(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @HAVE_epilogue, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i64, i64* @epilogue_completed, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6, %1
  %10 = load i32, i32* @EXIT_IGNORE_STACK, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load i32, i32* @FRAME_POINTER_REQUIRED, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @current_function_calls_alloca, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* @flag_omit_frame_pointer, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %15, %12
  %22 = load i64, i64* @current_function_sp_is_unchanging, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %18, %9, %6
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %27 = call i32 @SET_REGNO_REG_SET(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load i64, i64* @reload_completed, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* @frame_pointer_needed, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %37 = call i32 @SET_REGNO_REG_SET(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @INVALID_REGNUM, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i64*, i64** @fixed_regs, align 8
  %45 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  %51 = load i64, i64* @PIC_OFFSET_TABLE_REGNUM, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @SET_REGNO_REG_SET(i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %49, %43, %38
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %75, %54
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i64*, i64** @global_regs, align 8
  %61 = load i32, i32* %3, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = call i64 @EPILOGUE_USES(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @SET_REGNO_REG_SET(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load i64, i64* @HAVE_epilogue, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load i64, i64* @epilogue_completed, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %110, %84
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i64*, i64** @regs_ever_live, align 8
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @LOCAL_REGNO(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @regs_invalidated_by_call, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @TEST_HARD_REG_BIT(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @SET_REGNO_REG_SET(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %100, %96, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %85

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113, %81, %78
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @diddle_return_value(i32 (i64, i32)* @mark_reg, i32 %115)
  ret void
}

declare dso_local i32 @SET_REGNO_REG_SET(i32, i32) #1

declare dso_local i64 @EPILOGUE_USES(i32) #1

declare dso_local i32 @LOCAL_REGNO(i32) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @diddle_return_value(i32 (i64, i32)*, i32) #1

declare dso_local i32 @mark_reg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
