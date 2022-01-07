; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_niter_for_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_niter_for_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32, i32 }
%struct.nfe_cache_elt = type { i32, i32 }
%struct.tree_niter_desc = type { i32, i32 }

@INSERT = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, i32)* @niter_for_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niter_for_exit(%struct.ivopts_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfe_cache_elt*, align 8
  %6 = alloca %struct.tree_niter_desc, align 4
  %7 = alloca %struct.nfe_cache_elt**, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %9 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @htab_hash_pointer(i32 %12)
  %14 = load i32, i32* @INSERT, align 4
  %15 = call %struct.nfe_cache_elt** @htab_find_slot_with_hash(i32 %10, i32 %11, i32 %13, i32 %14)
  store %struct.nfe_cache_elt** %15, %struct.nfe_cache_elt*** %7, align 8
  %16 = load %struct.nfe_cache_elt**, %struct.nfe_cache_elt*** %7, align 8
  %17 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %16, align 8
  %18 = icmp ne %struct.nfe_cache_elt* %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %2
  %20 = call %struct.nfe_cache_elt* @xmalloc(i32 8)
  store %struct.nfe_cache_elt* %20, %struct.nfe_cache_elt** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %5, align 8
  %23 = getelementptr inbounds %struct.nfe_cache_elt, %struct.nfe_cache_elt* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %25 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @number_of_iterations_exit(i32 %26, i32 %27, %struct.tree_niter_desc* %6, i32 1)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %6, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @zero_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @contains_abnormal_ssa_name_p(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_niter_desc, %struct.tree_niter_desc* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %5, align 8
  %44 = getelementptr inbounds %struct.nfe_cache_elt, %struct.nfe_cache_elt* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %35, %30, %19
  %46 = load i32, i32* @NULL_TREE, align 4
  %47 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %5, align 8
  %48 = getelementptr inbounds %struct.nfe_cache_elt, %struct.nfe_cache_elt* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %40
  br label %53

50:                                               ; preds = %2
  %51 = load %struct.nfe_cache_elt**, %struct.nfe_cache_elt*** %7, align 8
  %52 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %51, align 8
  store %struct.nfe_cache_elt* %52, %struct.nfe_cache_elt** %5, align 8
  br label %53

53:                                               ; preds = %50, %49
  %54 = load %struct.nfe_cache_elt*, %struct.nfe_cache_elt** %5, align 8
  %55 = getelementptr inbounds %struct.nfe_cache_elt, %struct.nfe_cache_elt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  ret i32 %56
}

declare dso_local %struct.nfe_cache_elt** @htab_find_slot_with_hash(i32, i32, i32, i32) #1

declare dso_local i32 @htab_hash_pointer(i32) #1

declare dso_local %struct.nfe_cache_elt* @xmalloc(i32) #1

declare dso_local i64 @number_of_iterations_exit(i32, i32, %struct.tree_niter_desc*, i32) #1

declare dso_local i64 @zero_p(i32) #1

declare dso_local i32 @contains_abnormal_ssa_name_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
