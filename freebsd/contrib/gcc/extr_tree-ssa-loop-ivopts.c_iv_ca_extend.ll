; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i32 }
%struct.iv_cand = type { i32 }
%struct.iv_ca_delta = type { i32 }
%struct.iv_use = type { i32 }
%struct.cost_pair = type { %struct.iv_cand* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_cand*, %struct.iv_ca_delta**, i32*)* @iv_ca_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_ca_extend(%struct.ivopts_data* %0, %struct.iv_ca* %1, %struct.iv_cand* %2, %struct.iv_ca_delta** %3, i32* %4) #0 {
  %6 = alloca %struct.ivopts_data*, align 8
  %7 = alloca %struct.iv_ca*, align 8
  %8 = alloca %struct.iv_cand*, align 8
  %9 = alloca %struct.iv_ca_delta**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iv_use*, align 8
  %14 = alloca %struct.cost_pair*, align 8
  %15 = alloca %struct.cost_pair*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %6, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %7, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %8, align 8
  store %struct.iv_ca_delta** %3, %struct.iv_ca_delta*** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %9, align 8
  store %struct.iv_ca_delta* null, %struct.iv_ca_delta** %16, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %67, %5
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %20 = getelementptr inbounds %struct.iv_ca, %struct.iv_ca* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %17
  %24 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %24, i32 %25)
  store %struct.iv_use* %26, %struct.iv_use** %13, align 8
  %27 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %28 = load %struct.iv_use*, %struct.iv_use** %13, align 8
  %29 = call %struct.cost_pair* @iv_ca_cand_for_use(%struct.iv_ca* %27, %struct.iv_use* %28)
  store %struct.cost_pair* %29, %struct.cost_pair** %14, align 8
  %30 = load %struct.cost_pair*, %struct.cost_pair** %14, align 8
  %31 = icmp ne %struct.cost_pair* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.cost_pair*, %struct.cost_pair** %14, align 8
  %34 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %33, i32 0, i32 0
  %35 = load %struct.iv_cand*, %struct.iv_cand** %34, align 8
  %36 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %37 = icmp eq %struct.iv_cand* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %67

39:                                               ; preds = %32, %23
  %40 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %41 = load %struct.iv_use*, %struct.iv_use** %13, align 8
  %42 = load %struct.iv_cand*, %struct.iv_cand** %8, align 8
  %43 = call %struct.cost_pair* @get_use_iv_cost(%struct.ivopts_data* %40, %struct.iv_use* %41, %struct.iv_cand* %42)
  store %struct.cost_pair* %43, %struct.cost_pair** %15, align 8
  %44 = load %struct.cost_pair*, %struct.cost_pair** %15, align 8
  %45 = icmp ne %struct.cost_pair* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %67

47:                                               ; preds = %39
  %48 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %49 = load %struct.cost_pair*, %struct.cost_pair** %15, align 8
  %50 = call i32 @iv_ca_has_deps(%struct.iv_ca* %48, %struct.cost_pair* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %67

53:                                               ; preds = %47
  %54 = load %struct.cost_pair*, %struct.cost_pair** %15, align 8
  %55 = load %struct.cost_pair*, %struct.cost_pair** %14, align 8
  %56 = call i32 @cheaper_cost_pair(%struct.cost_pair* %54, %struct.cost_pair* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %67

59:                                               ; preds = %53
  %60 = load %struct.iv_use*, %struct.iv_use** %13, align 8
  %61 = load %struct.cost_pair*, %struct.cost_pair** %14, align 8
  %62 = load %struct.cost_pair*, %struct.cost_pair** %15, align 8
  %63 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %9, align 8
  %64 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %63, align 8
  %65 = call %struct.iv_ca_delta* @iv_ca_delta_add(%struct.iv_use* %60, %struct.cost_pair* %61, %struct.cost_pair* %62, %struct.iv_ca_delta* %64)
  %66 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %9, align 8
  store %struct.iv_ca_delta* %65, %struct.iv_ca_delta** %66, align 8
  br label %67

67:                                               ; preds = %59, %58, %52, %46, %38
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %17

70:                                               ; preds = %17
  %71 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %72 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %73 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %9, align 8
  %74 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %73, align 8
  %75 = call i32 @iv_ca_delta_commit(%struct.ivopts_data* %71, %struct.iv_ca* %72, %struct.iv_ca_delta* %74, i32 1)
  %76 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %77 = call i32 @iv_ca_cost(%struct.iv_ca* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %82 = call i32 @iv_ca_n_cands(%struct.iv_ca* %81)
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %70
  %85 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %86 = load %struct.iv_ca*, %struct.iv_ca** %7, align 8
  %87 = load %struct.iv_ca_delta**, %struct.iv_ca_delta*** %9, align 8
  %88 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %87, align 8
  %89 = call i32 @iv_ca_delta_commit(%struct.ivopts_data* %85, %struct.iv_ca* %86, %struct.iv_ca_delta* %88, i32 0)
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local %struct.iv_use* @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local %struct.cost_pair* @iv_ca_cand_for_use(%struct.iv_ca*, %struct.iv_use*) #1

declare dso_local %struct.cost_pair* @get_use_iv_cost(%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*) #1

declare dso_local i32 @iv_ca_has_deps(%struct.iv_ca*, %struct.cost_pair*) #1

declare dso_local i32 @cheaper_cost_pair(%struct.cost_pair*, %struct.cost_pair*) #1

declare dso_local %struct.iv_ca_delta* @iv_ca_delta_add(%struct.iv_use*, %struct.cost_pair*, %struct.cost_pair*, %struct.iv_ca_delta*) #1

declare dso_local i32 @iv_ca_delta_commit(%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_ca_delta*, i32) #1

declare dso_local i32 @iv_ca_cost(%struct.iv_ca*) #1

declare dso_local i32 @iv_ca_n_cands(%struct.iv_ca*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
