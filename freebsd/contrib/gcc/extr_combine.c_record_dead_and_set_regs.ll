; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_dead_and_set_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_dead_and_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@REG_DEAD = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@REG_INC = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@regs_invalidated_by_call = common dso_local global i32 0, align 4
@mem_last_set = common dso_local global i32 0, align 4
@last_call_cuid = common dso_local global i32 0, align 4
@record_dead_and_set_regs_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @record_dead_and_set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_dead_and_set_regs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @REG_NOTES(i64 %7)
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %74, %1
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %77

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @REG_NOTE_KIND(i64 %13)
  %15 = load i64, i64* @REG_DEAD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @XEXP(i64 %18, i32 0)
  %20 = call i64 @REG_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %17
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @XEXP(i64 %23, i32 0)
  %25 = call i32 @REGNO(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load i32**, i32*** @hard_regno_nregs, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @XEXP(i64 %36, i32 0)
  %38 = call i64 @GET_MODE(i64 %37)
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  br label %42

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %30
  %43 = phi i32 [ %40, %30 ], [ 1, %41 ]
  %44 = add i32 %26, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %57, %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i64, i64* %2, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i64 %51, i64* %56, align 8
  br label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %46

60:                                               ; preds = %46
  br label %73

61:                                               ; preds = %17, %12
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @REG_NOTE_KIND(i64 %62)
  %64 = load i64, i64* @REG_INC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @XEXP(i64 %67, i32 0)
  %69 = load i64, i64* %2, align 8
  %70 = load i64, i64* @NULL_RTX, align 8
  %71 = call i32 @record_value_for_reg(i64 %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %60
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %3, align 8
  %76 = call i64 @XEXP(i64 %75, i32 1)
  store i64 %76, i64* %3, align 8
  br label %9

77:                                               ; preds = %9
  %78 = load i64, i64* %2, align 8
  %79 = call i64 @CALL_P(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %134

81:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %123, %81
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %82
  %87 = load i32, i32* @regs_invalidated_by_call, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @TEST_HARD_REG_BIT(i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %86
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  store i64 0, i64* %106, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %108 = load i32, i32* %4, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %118 = load i32, i32* %4, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %91, %86
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %4, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %82

126:                                              ; preds = %82
  %127 = load i64, i64* %2, align 8
  %128 = call i32 @INSN_CUID(i64 %127)
  store i32 %128, i32* @mem_last_set, align 4
  store i32 %128, i32* @last_call_cuid, align 4
  %129 = load i64, i64* %2, align 8
  %130 = call i32 @PATTERN(i64 %129)
  %131 = load i32, i32* @record_dead_and_set_regs_1, align 4
  %132 = load i64, i64* @NULL_RTX, align 8
  %133 = call i32 @note_stores(i32 %130, i32 %131, i64 %132)
  br label %140

134:                                              ; preds = %77
  %135 = load i64, i64* %2, align 8
  %136 = call i32 @PATTERN(i64 %135)
  %137 = load i32, i32* @record_dead_and_set_regs_1, align 4
  %138 = load i64, i64* %2, align 8
  %139 = call i32 @note_stores(i32 %136, i32 %137, i64 %138)
  br label %140

140:                                              ; preds = %134, %126
  ret void
}

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @record_value_for_reg(i64, i64, i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i32 @note_stores(i32, i32, i64) #1

declare dso_local i32 @PATTERN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
