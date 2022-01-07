; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_execute_expand_omp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_execute_expand_omp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@root_omp_region = common dso_local global i32 0, align 4
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"\0AOMP region tree\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@CDI_POST_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @execute_expand_omp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_expand_omp() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @build_omp_regions()
  %3 = load i32, i32* @root_omp_region, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %28

6:                                                ; preds = %0
  %7 = load i64, i64* @dump_file, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64, i64* @dump_file, align 8
  %11 = call i32 @fprintf(i64 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @dump_file, align 8
  %13 = load i32, i32* @root_omp_region, align 4
  %14 = call i32 @dump_omp_region(i64 %12, i32 %13, i32 0)
  %15 = load i64, i64* @dump_file, align 8
  %16 = call i32 @fprintf(i64 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %9, %6
  %18 = load i32, i32* @root_omp_region, align 4
  %19 = call i32 @remove_exit_barriers(i32 %18)
  %20 = load i32, i32* @root_omp_region, align 4
  %21 = call i32 @expand_omp(i32 %20)
  %22 = load i32, i32* @CDI_DOMINATORS, align 4
  %23 = call i32 @free_dominance_info(i32 %22)
  %24 = load i32, i32* @CDI_POST_DOMINATORS, align 4
  %25 = call i32 @free_dominance_info(i32 %24)
  %26 = call i32 (...) @cleanup_tree_cfg()
  %27 = call i32 (...) @free_omp_regions()
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %17, %5
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @build_omp_regions(...) #1

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @dump_omp_region(i64, i32, i32) #1

declare dso_local i32 @remove_exit_barriers(i32) #1

declare dso_local i32 @expand_omp(i32) #1

declare dso_local i32 @free_dominance_info(i32) #1

declare dso_local i32 @cleanup_tree_cfg(...) #1

declare dso_local i32 @free_omp_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
