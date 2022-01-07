; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_override_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_override_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_AUTO_PIC = common dso_local global i64 0, align 8
@MASK_CONST_GP = common dso_local global i32 0, align 4
@target_flags = common dso_local global i32 0, align 4
@TARGET_INLINE_SQRT = common dso_local global i64 0, align 8
@INL_MIN_LAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"not yet implemented: latency-optimized inline square root\00", align 1
@INL_MAX_THR = common dso_local global i64 0, align 8
@flag_schedule_insns_after_reload = common dso_local global i64 0, align 8
@ia64_flag_schedule_insns2 = common dso_local global i64 0, align 8
@g_switch_set = common dso_local global i64 0, align 8
@g_switch_value = common dso_local global i32 0, align 4
@IA64_DEFAULT_GVALUE = common dso_local global i32 0, align 4
@ia64_section_threshold = common dso_local global i32 0, align 4
@ia64_init_machine_status = common dso_local global i32 0, align 4
@init_machine_status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_override_options() #0 {
  %1 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @MASK_CONST_GP, align 4
  %5 = load i32, i32* @target_flags, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* @target_flags, align 4
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i64, i64* @TARGET_INLINE_SQRT, align 8
  %9 = load i64, i64* @INL_MIN_LAT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = call i32 @warning(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @INL_MAX_THR, align 8
  store i64 %13, i64* @TARGET_INLINE_SQRT, align 8
  br label %14

14:                                               ; preds = %11, %7
  %15 = load i64, i64* @flag_schedule_insns_after_reload, align 8
  store i64 %15, i64* @ia64_flag_schedule_insns2, align 8
  store i64 0, i64* @flag_schedule_insns_after_reload, align 8
  %16 = load i64, i64* @g_switch_set, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @g_switch_value, align 4
  br label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @IA64_DEFAULT_GVALUE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* @ia64_section_threshold, align 4
  %24 = load i32, i32* @ia64_init_machine_status, align 4
  store i32 %24, i32* @init_machine_status, align 4
  ret void
}

declare dso_local i32 @warning(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
