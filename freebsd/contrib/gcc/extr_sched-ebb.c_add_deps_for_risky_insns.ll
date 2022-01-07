; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_add_deps_for_risky_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-ebb.c_add_deps_for_risky_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@NULL_RTX = common dso_local global i64 0, align 8
@flag_schedule_speculative_load = common dso_local global i32 0, align 4
@current_sched_info = common dso_local global %struct.TYPE_8__* null, align 8
@DO_SPECULATION = common dso_local global i32 0, align 4
@REG_DEP_ANTI = common dso_local global i32 0, align 4
@DEP_ANTI = common dso_local global i32 0, align 4
@DEP_CREATED = common dso_local global i32 0, align 4
@DEP_CHANGED = common dso_local global i32 0, align 4
@BEGIN_CONTROL = common dso_local global i32 0, align 4
@MAX_DEP_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @add_deps_for_risky_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_deps_for_risky_insns(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* @NULL_RTX, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @NEXT_INSN(i64 %14)
  store i64 %15, i64* %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %115, %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %118

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @control_flow_insn_p(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.TYPE_7__* @BLOCK_FOR_INSN(i64 %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %10, align 8
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* %8, align 8
  br label %114

33:                                               ; preds = %21
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @INSN_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @NULL_RTX, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %113

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @haifa_classify_insn(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %111 [
    i32 130, label %46
    i32 128, label %67
    i32 131, label %67
    i32 129, label %67
  ]

46:                                               ; preds = %41
  %47 = load i32, i32* @flag_schedule_speculative_load, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call %struct.TYPE_7__* @earliest_block_with_similiar_load(%struct.TYPE_7__* %50, i64 %51)
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = icmp ne %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %11, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %112

62:                                               ; preds = %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %64 = call i64 @BB_END(%struct.TYPE_7__* %63)
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %62, %49
  br label %66

66:                                               ; preds = %65, %46
  br label %67

67:                                               ; preds = %41, %41, %41, %66
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @sched_insns_conditions_mutex_p(i64 %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %110, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_sched_info, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DO_SPECULATION, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @REG_DEP_ANTI, align 4
  %83 = load i32, i32* @DEP_ANTI, align 4
  %84 = call i32 @add_or_update_back_dep(i64 %80, i64 %81, i32 %82, i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @DEP_CREATED, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @LOG_LINKS(i64 %90)
  %92 = call i32 @add_forw_dep(i64 %89, i32 %91)
  br label %99

93:                                               ; preds = %79
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @DEP_CHANGED, align 4
  %96 = icmp ne i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @gcc_assert(i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  br label %109

100:                                              ; preds = %72
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* @REG_DEP_ANTI, align 4
  %104 = load i32, i32* @DEP_ANTI, align 4
  %105 = load i32, i32* @BEGIN_CONTROL, align 4
  %106 = load i32, i32* @MAX_DEP_WEAK, align 4
  %107 = call i32 @set_dep_weak(i32 %104, i32 %105, i32 %106)
  %108 = call i32 @add_or_update_back_forw_dep(i64 %101, i64 %102, i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %100, %99
  br label %110

110:                                              ; preds = %109, %67
  br label %112

111:                                              ; preds = %41
  br label %112

112:                                              ; preds = %111, %110, %61
  br label %113

113:                                              ; preds = %112, %37, %33
  br label %114

114:                                              ; preds = %113, %25
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @NEXT_INSN(i64 %116)
  store i64 %117, i64* %5, align 8
  br label %17

118:                                              ; preds = %17
  br label %119

119:                                              ; preds = %122, %118
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = icmp ne %struct.TYPE_7__* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %11, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %128, %struct.TYPE_7__** %10, align 8
  br label %119

129:                                              ; preds = %119
  ret void
}

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @control_flow_insn_p(i64) #1

declare dso_local %struct.TYPE_7__* @BLOCK_FOR_INSN(i64) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @haifa_classify_insn(i64) #1

declare dso_local %struct.TYPE_7__* @earliest_block_with_similiar_load(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_7__*) #1

declare dso_local i32 @sched_insns_conditions_mutex_p(i64, i64) #1

declare dso_local i32 @add_or_update_back_dep(i64, i64, i32, i32) #1

declare dso_local i32 @add_forw_dep(i64, i32) #1

declare dso_local i32 @LOG_LINKS(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @add_or_update_back_forw_dep(i64, i64, i32, i32) #1

declare dso_local i32 @set_dep_weak(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
