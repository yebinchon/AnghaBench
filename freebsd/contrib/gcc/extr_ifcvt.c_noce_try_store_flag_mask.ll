; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_noce_try_store_flag_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noce_if_info = type { i64, i64, i32, i32, i64, i32 }

@no_new_pseudos = common dso_local global i32 0, align 4
@BRANCH_COST = common dso_local global i32 0, align 4
@STORE_FLAG_VALUE = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@UNKNOWN = common dso_local global i64 0, align 8
@AND = common dso_local global i32 0, align 4
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.noce_if_info*)* @noce_try_store_flag_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @noce_try_store_flag_mask(%struct.noce_if_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.noce_if_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.noce_if_info* %0, %struct.noce_if_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @no_new_pseudos, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %118, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @BRANCH_COST, align 4
  %11 = icmp sge i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @STORE_FLAG_VALUE, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %118

15:                                               ; preds = %12, %9
  %16 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %17 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @const0_rtx, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %23 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %26 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @rtx_equal_p(i64 %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %21, %15
  %31 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %32 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %35 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @reversed_comparison_code(i32 %33, i32 %36)
  %38 = load i64, i64* @UNKNOWN, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %6, align 4
  br i1 %39, label %41, label %118

41:                                               ; preds = %30
  %42 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %43 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @const0_rtx, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %118

47:                                               ; preds = %41
  %48 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %52 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @rtx_equal_p(i64 %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %118

56:                                               ; preds = %47, %21
  %57 = call i32 (...) @start_sequence()
  %58 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %59 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %60 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @GET_MODE(i64 %61)
  %63 = call i32 @gen_reg_rtx(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @noce_emit_store_flag(%struct.noce_if_info* %58, i32 %63, i32 %64, i32 -1)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %56
  %69 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %70 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @GET_MODE(i64 %71)
  %73 = load i32, i32* @AND, align 4
  %74 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %75 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %79 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %78, i32 0, i32 4
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @OPTAB_WIDEN, align 4
  %82 = call i64 @expand_simple_binop(i32 %72, i32 %73, i64 %76, i64 %77, i64 %80, i32 0, i32 %81)
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %68, %56
  %84 = load i64, i64* %4, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %83
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %89 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %94 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @noce_emit_move_insn(i64 %95, i64 %96)
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %100 = call i64 @end_ifcvt_sequence(%struct.noce_if_info* %99)
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %2, align 4
  br label %120

105:                                              ; preds = %98
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %108 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.noce_if_info*, %struct.noce_if_info** %3, align 8
  %111 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @INSN_LOCATOR(i32 %112)
  %114 = call i32 @emit_insn_before_setloc(i64 %106, i32 %109, i32 %113)
  %115 = load i32, i32* @TRUE, align 4
  store i32 %115, i32* %2, align 4
  br label %120

116:                                              ; preds = %83
  %117 = call i32 (...) @end_sequence()
  br label %118

118:                                              ; preds = %116, %47, %41, %30, %12, %1
  %119 = load i32, i32* @FALSE, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %118, %105, %103
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @reversed_comparison_code(i32, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @noce_emit_store_flag(%struct.noce_if_info*, i32, i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @expand_simple_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @noce_emit_move_insn(i64, i64) #1

declare dso_local i64 @end_ifcvt_sequence(%struct.noce_if_info*) #1

declare dso_local i32 @emit_insn_before_setloc(i64, i32, i32) #1

declare dso_local i32 @INSN_LOCATOR(i32) #1

declare dso_local i32 @end_sequence(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
