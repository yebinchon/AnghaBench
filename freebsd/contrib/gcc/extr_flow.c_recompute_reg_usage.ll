; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_recompute_reg_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_flow.c_recompute_reg_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UPDATE_LIFE_LOCAL = common dso_local global i32 0, align 4
@PROP_REG_INFO = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @recompute_reg_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recompute_reg_usage() #0 {
  %1 = call i32 (...) @allocate_reg_life_data()
  %2 = load i32, i32* @UPDATE_LIFE_LOCAL, align 4
  %3 = load i32, i32* @PROP_REG_INFO, align 4
  %4 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @update_life_info(i32* null, i32 %2, i32 %5)
  %7 = load i64, i64* @dump_file, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i64, i64* @dump_file, align 8
  %11 = load i32, i32* @dump_flags, align 4
  %12 = call i32 @dump_flow_info(i64 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %0
  ret i32 0
}

declare dso_local i32 @allocate_reg_life_data(...) #1

declare dso_local i32 @update_life_info(i32*, i32, i32) #1

declare dso_local i32 @dump_flow_info(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
