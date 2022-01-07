; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_code_hoist_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_compute_code_hoist_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@transp = common dso_local global i32 0, align 4
@comp = common dso_local global i32 0, align 4
@antloc = common dso_local global i32 0, align 4
@expr_hash_table = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_code_hoist_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_code_hoist_data() #0 {
  %1 = load i32, i32* @transp, align 4
  %2 = load i32, i32* @comp, align 4
  %3 = load i32, i32* @antloc, align 4
  %4 = call i32 @compute_local_properties(i32 %1, i32 %2, i32 %3, i32* @expr_hash_table)
  %5 = call i32 (...) @compute_transpout()
  %6 = call i32 (...) @compute_code_hoist_vbeinout()
  %7 = load i32, i32* @CDI_DOMINATORS, align 4
  %8 = call i32 @calculate_dominance_info(i32 %7)
  %9 = load i64, i64* @dump_file, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i64, i64* @dump_file, align 8
  %13 = call i32 @fprintf(i64 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @compute_local_properties(i32, i32, i32, i32*) #1

declare dso_local i32 @compute_transpout(...) #1

declare dso_local i32 @compute_code_hoist_vbeinout(...) #1

declare dso_local i32 @calculate_dominance_info(i32) #1

declare dso_local i32 @fprintf(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
