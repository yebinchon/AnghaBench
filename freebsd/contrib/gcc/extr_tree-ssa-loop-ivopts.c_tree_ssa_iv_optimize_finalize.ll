; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_tree_ssa_iv_optimize_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32, i32, i32, i32, i32, i32 }

@tree = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4
@decl_rtl_to_reset = common dso_local global i32 0, align 4
@iv_use_p = common dso_local global i32 0, align 4
@iv_cand_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*)* @tree_ssa_iv_optimize_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tree_ssa_iv_optimize_finalize(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  %3 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %4 = call i32 @free_loop_data(%struct.ivopts_data* %3)
  %5 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %6 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @free(i32 %7)
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %10 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BITMAP_FREE(i32 %11)
  %13 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %14 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BITMAP_FREE(i32 %15)
  %17 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %18 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @htab_delete(i32 %19)
  %21 = load i32, i32* @tree, align 4
  %22 = load i32, i32* @heap, align 4
  %23 = load i32, i32* @decl_rtl_to_reset, align 4
  %24 = call i32 @VEC_free(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @iv_use_p, align 4
  %26 = load i32, i32* @heap, align 4
  %27 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %28 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @VEC_free(i32 %25, i32 %26, i32 %29)
  %31 = load i32, i32* @iv_cand_p, align 4
  %32 = load i32, i32* @heap, align 4
  %33 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %34 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @VEC_free(i32 %31, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @free_loop_data(%struct.ivopts_data*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @htab_delete(i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
