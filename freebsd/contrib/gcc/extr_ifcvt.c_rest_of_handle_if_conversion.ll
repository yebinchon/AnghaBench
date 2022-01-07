; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_rest_of_handle_if_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ifcvt.c_rest_of_handle_if_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_if_conversion = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@CLEANUP_EXPENSIVE = common dso_local global i32 0, align 4
@TV_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_if_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_if_conversion() #0 {
  %1 = load i64, i64* @flag_if_conversion, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %17

3:                                                ; preds = %0
  %4 = load i64, i64* @dump_file, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i64, i64* @dump_file, align 8
  %8 = load i32, i32* @dump_flags, align 4
  %9 = call i32 @dump_flow_info(i64 %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %3
  %11 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %12 = call i32 @cleanup_cfg(i32 %11)
  %13 = call i32 (...) @get_insns()
  %14 = call i32 (...) @max_reg_num()
  %15 = call i32 @reg_scan(i32 %13, i32 %14)
  %16 = call i32 @if_convert(i32 0)
  br label %17

17:                                               ; preds = %10, %0
  %18 = load i32, i32* @TV_JUMP, align 4
  %19 = call i32 @timevar_push(i32 %18)
  %20 = load i32, i32* @CLEANUP_EXPENSIVE, align 4
  %21 = call i32 @cleanup_cfg(i32 %20)
  %22 = call i32 (...) @get_insns()
  %23 = call i32 (...) @max_reg_num()
  %24 = call i32 @reg_scan(i32 %22, i32 %23)
  %25 = load i32, i32* @TV_JUMP, align 4
  %26 = call i32 @timevar_pop(i32 %25)
  ret i32 0
}

declare dso_local i32 @dump_flow_info(i64, i32) #1

declare dso_local i32 @cleanup_cfg(i32) #1

declare dso_local i32 @reg_scan(i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @max_reg_num(...) #1

declare dso_local i32 @if_convert(i32) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
