; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_first_parameter_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_first_parameter_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parms_set_data = type { i32, i32 }

@USE = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@parms_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_first_parameter_load(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.parms_set_data, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CLEAR_HARD_REG_SET(i32 %11)
  %13 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %14)
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %59, %2
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = call i64 @XEXP(i64 %20, i32 0)
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @USE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  %28 = call i64 @XEXP(i64 %27, i32 0)
  %29 = call i64 @REG_P(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @XEXP(i64 %32, i32 0)
  %34 = call i64 @XEXP(i64 %33, i32 0)
  %35 = call i64 @REGNO(i64 %34)
  %36 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %37 = icmp slt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @XEXP(i64 %40, i32 0)
  %42 = call i64 @XEXP(i64 %41, i32 0)
  %43 = call i64 @REGNO(i64 %42)
  %44 = call i32 @FUNCTION_ARG_REGNO_P(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  br label %59

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @XEXP(i64 %50, i32 0)
  %52 = call i64 @XEXP(i64 %51, i32 0)
  %53 = call i64 @REGNO(i64 %52)
  %54 = call i32 @SET_HARD_REG_BIT(i32 %49, i64 %53)
  %55 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %47, %25, %19
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @XEXP(i64 %60, i32 1)
  store i64 %61, i64* %6, align 8
  br label %16

62:                                               ; preds = %16
  %63 = load i64, i64* %3, align 8
  store i64 %63, i64* %7, align 8
  %64 = load i64, i64* %3, align 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %111, %62
  %66 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %112

75:                                               ; preds = %73
  %76 = load i64, i64* %7, align 8
  %77 = call i64 @PREV_INSN(i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @CALL_P(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %112

82:                                               ; preds = %75
  %83 = load i64, i64* %7, align 8
  %84 = call i64 @LABEL_P(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %4, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @gcc_assert(i32 %90)
  br label %112

92:                                               ; preds = %82
  %93 = load i64, i64* %7, align 8
  %94 = call i64 @INSN_P(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @PATTERN(i64 %99)
  %101 = load i32, i32* @parms_set, align 4
  %102 = call i32 @note_stores(i32 %100, i32 %101, %struct.parms_set_data* %5)
  %103 = load i32, i32* %9, align 4
  %104 = getelementptr inbounds %struct.parms_set_data, %struct.parms_set_data* %5, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %8, align 8
  br label %110

109:                                              ; preds = %96
  br label %112

110:                                              ; preds = %107
  br label %111

111:                                              ; preds = %110, %92
  br label %65

112:                                              ; preds = %109, %86, %81, %73
  %113 = load i64, i64* %8, align 8
  ret i64 %113
}

declare dso_local i32 @CLEAR_HARD_REG_SET(i32) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @FUNCTION_ARG_REGNO_P(i64) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @note_stores(i32, i32, %struct.parms_set_data*) #1

declare dso_local i32 @PATTERN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
