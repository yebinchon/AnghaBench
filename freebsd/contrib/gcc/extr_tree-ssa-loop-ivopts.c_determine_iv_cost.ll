; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_iv_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_determine_iv_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_cand = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@current_loop = common dso_local global i32 0, align 4
@IP_ORIGINAL = common dso_local global i64 0, align 8
@IP_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_cand*)* @determine_iv_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_iv_cost(%struct.ivopts_data* %0, %struct.iv_cand* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.iv_cand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.iv_cand* %1, %struct.iv_cand** %4, align 8
  %8 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %9 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %14 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %17 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @force_var_cost(%struct.ivopts_data* %21, i32 %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TYPE_MODE(i32 %25)
  %27 = call i32 @add_cost(i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @current_loop, align 4
  %31 = call i32 @AVG_LOOP_NITER(i32 %30)
  %32 = udiv i32 %29, %31
  %33 = add i32 %28, %32
  %34 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %35 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %37 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IP_ORIGINAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %15
  %42 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %43 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SSA_NAME_VAR(i32 %44)
  %46 = call i32 @DECL_ARTIFICIAL(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %50 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %41, %15
  %54 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %55 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @IP_END, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %61 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ip_end_pos(i32 %62)
  %64 = call i64 @empty_block_p(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.iv_cand*, %struct.iv_cand** %4, align 8
  %68 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %12, %66, %59, %53
  ret void
}

declare dso_local i32 @force_var_cost(%struct.ivopts_data*, i32, i32*) #1

declare dso_local i32 @add_cost(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @AVG_LOOP_NITER(i32) #1

declare dso_local i32 @DECL_ARTIFICIAL(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i64 @empty_block_p(i32) #1

declare dso_local i32 @ip_end_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
