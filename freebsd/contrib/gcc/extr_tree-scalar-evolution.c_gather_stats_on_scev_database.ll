; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_gather_stats_on_scev_database.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-scalar-evolution.c_gather_stats_on_scev_database.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chrec_stats = type { i32 }

@dump_file = common dso_local global i32 0, align 4
@scalar_evolution_info = common dso_local global i32 0, align 4
@gather_stats_on_scev_database_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gather_stats_on_scev_database() #0 {
  %1 = alloca %struct.chrec_stats, align 4
  %2 = load i32, i32* @dump_file, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %12

5:                                                ; preds = %0
  %6 = call i32 @reset_chrecs_counters(%struct.chrec_stats* %1)
  %7 = load i32, i32* @scalar_evolution_info, align 4
  %8 = load i32, i32* @gather_stats_on_scev_database_1, align 4
  %9 = call i32 @htab_traverse(i32 %7, i32 %8, %struct.chrec_stats* %1)
  %10 = load i32, i32* @dump_file, align 4
  %11 = call i32 @dump_chrecs_stats(i32 %10, %struct.chrec_stats* %1)
  br label %12

12:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @reset_chrecs_counters(%struct.chrec_stats*) #1

declare dso_local i32 @htab_traverse(i32, i32, %struct.chrec_stats*) #1

declare dso_local i32 @dump_chrecs_stats(i32, %struct.chrec_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
