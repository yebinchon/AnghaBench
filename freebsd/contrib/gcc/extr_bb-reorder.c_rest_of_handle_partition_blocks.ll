; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_rest_of_handle_partition_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bb-reorder.c_rest_of_handle_partition_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_new_pseudos = common dso_local global i32 0, align 4
@UPDATE_LIFE_GLOBAL_RM_NOTES = common dso_local global i32 0, align 4
@PROP_LOG_LINKS = common dso_local global i32 0, align 4
@PROP_REG_INFO = common dso_local global i32 0, align 4
@PROP_DEATH_NOTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_partition_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_partition_blocks() #0 {
  store i32 0, i32* @no_new_pseudos, align 4
  %1 = call i32 (...) @partition_hot_cold_basic_blocks()
  %2 = call i32 (...) @allocate_reg_life_data()
  %3 = load i32, i32* @UPDATE_LIFE_GLOBAL_RM_NOTES, align 4
  %4 = load i32, i32* @PROP_LOG_LINKS, align 4
  %5 = load i32, i32* @PROP_REG_INFO, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @PROP_DEATH_NOTES, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @update_life_info(i32* null, i32 %3, i32 %8)
  store i32 1, i32* @no_new_pseudos, align 4
  ret i32 0
}

declare dso_local i32 @partition_hot_cold_basic_blocks(...) #1

declare dso_local i32 @allocate_reg_life_data(...) #1

declare dso_local i32 @update_life_info(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
