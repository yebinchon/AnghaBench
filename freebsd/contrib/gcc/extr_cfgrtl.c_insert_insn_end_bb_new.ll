; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_insert_insn_end_bb_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_insert_insn_end_bb_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NULL_RTX = common dso_local global i64 0, align 8
@EDGE_ABNORMAL = common dso_local global i32 0, align 4
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@REG_CC_SETTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @insert_insn_end_bb_new(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @BB_END(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i64, i64* %7, align 8
  %13 = call i64 @NEXT_INSN(i64 %12)
  %14 = load i64, i64* @NULL_RTX, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @NEXT_INSN(i64 %17)
  store i64 %18, i64* %7, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @JUMP_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @NONJUMP_INSN_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @single_succ_p(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.TYPE_2__* @single_succ_edge(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EDGE_ABNORMAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %31, %27, %19
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @PATTERN(i64 %40)
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @ADDR_VEC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @PATTERN(i64 %46)
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %39
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @prev_real_insn(i64 %52)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @emit_insn_before_noloc(i64 %55, i64 %56)
  store i64 %57, i64* %6, align 8
  br label %101

58:                                               ; preds = %31, %23
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @CALL_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @single_succ_p(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = call %struct.TYPE_2__* @single_succ_edge(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EDGE_ABNORMAL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %66, %62
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @BB_HEAD(i32 %76)
  %78 = call i64 @find_first_parameter_load(i64 %75, i32 %77)
  store i64 %78, i64* %5, align 8
  br label %79

79:                                               ; preds = %89, %74
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @LABEL_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @NOTE_INSN_BASIC_BLOCK_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %83, %79
  %88 = phi i1 [ true, %79 ], [ %86, %83 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @NEXT_INSN(i64 %90)
  store i64 %91, i64* %5, align 8
  br label %79

92:                                               ; preds = %87
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @emit_insn_before_noloc(i64 %93, i64 %94)
  store i64 %95, i64* %6, align 8
  br label %100

96:                                               ; preds = %66, %58
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @emit_insn_after_noloc(i64 %97, i64 %98)
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %54
  %102 = load i64, i64* %6, align 8
  ret i64 %102
}

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i32 @single_succ_p(i32) #1

declare dso_local %struct.TYPE_2__* @single_succ_edge(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @prev_real_insn(i64) #1

declare dso_local i64 @emit_insn_before_noloc(i64, i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @find_first_parameter_load(i64, i32) #1

declare dso_local i32 @BB_HEAD(i32) #1

declare dso_local i64 @LABEL_P(i64) #1

declare dso_local i64 @NOTE_INSN_BASIC_BLOCK_P(i64) #1

declare dso_local i64 @emit_insn_after_noloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
