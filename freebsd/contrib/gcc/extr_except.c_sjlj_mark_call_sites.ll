; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_mark_call_sites.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_sjlj_mark_call_sites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sjlj_lp_info = type { i32 }
%struct.eh_region = type { i64 }

@REG_EH_REGION = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@flag_non_call_exceptions = common dso_local global i64 0, align 8
@eh_region = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@integer_type_node = common dso_local global i32 0, align 4
@sjlj_fc_call_site_ofs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sjlj_lp_info*)* @sjlj_mark_call_sites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjlj_mark_call_sites(%struct.sjlj_lp_info* %0) #0 {
  %2 = alloca %struct.sjlj_lp_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.eh_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.sjlj_lp_info* %0, %struct.sjlj_lp_info** %2, align 8
  store i32 -2, i32* %3, align 4
  %11 = call i64 (...) @get_insns()
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %106, %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %109

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @LABEL_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -2, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @INSN_P(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %106

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @REG_EH_REGION, align 4
  %28 = load i32, i32* @NULL_RTX, align 4
  %29 = call i64 @find_reg_note(i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @CALL_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @flag_non_call_exceptions, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @PATTERN(i64 %40)
  %42 = call i64 @may_trap_p(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %32
  store i32 -1, i32* %7, align 4
  br label %46

45:                                               ; preds = %39, %36
  br label %106

46:                                               ; preds = %44
  br label %71

47:                                               ; preds = %25
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @XEXP(i64 %48, i32 0)
  %50 = call i64 @INTVAL(i32 %49)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %106

53:                                               ; preds = %47
  %54 = load i32, i32* @eh_region, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @XEXP(i64 %60, i32 0)
  %62 = call i64 @INTVAL(i32 %61)
  %63 = call %struct.eh_region* @VEC_index(i32 %54, i32 %59, i64 %62)
  store %struct.eh_region* %63, %struct.eh_region** %6, align 8
  %64 = load %struct.sjlj_lp_info*, %struct.sjlj_lp_info** %2, align 8
  %65 = load %struct.eh_region*, %struct.eh_region** %6, align 8
  %66 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %64, i64 %67
  %69 = getelementptr inbounds %struct.sjlj_lp_info, %struct.sjlj_lp_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %53, %46
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %106

76:                                               ; preds = %71
  %77 = load i64, i64* %4, align 8
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @CALL_P(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* @NULL_RTX, align 4
  %84 = call i64 @find_first_parameter_load(i64 %82, i32 %83)
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = call i32 (...) @start_sequence()
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @integer_type_node, align 4
  %93 = call i32 @TYPE_MODE(i32 %92)
  %94 = load i32, i32* @sjlj_fc_call_site_ofs, align 4
  %95 = call i64 @adjust_address(i32 %91, i32 %93, i32 %94)
  store i64 %95, i64* %5, align 8
  %96 = load i64, i64* %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @GEN_INT(i32 %97)
  %99 = call i32 @emit_move_insn(i64 %96, i32 %98)
  %100 = call i64 (...) @get_insns()
  store i64 %100, i64* %10, align 8
  %101 = call i32 (...) @end_sequence()
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @emit_insn_before(i64 %102, i64 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %85, %75, %52, %45, %24
  %107 = load i64, i64* %4, align 8
  %108 = call i64 @NEXT_INSN(i64 %107)
  store i64 %108, i64* %4, align 8
  br label %12

109:                                              ; preds = %12
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @find_reg_note(i64, i32, i32) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @may_trap_p(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @INTVAL(i32) #1

declare dso_local i32 @XEXP(i64, i32) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i64) #1

declare dso_local i64 @find_first_parameter_load(i64, i32) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i64 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_insn_before(i64, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
