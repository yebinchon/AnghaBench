; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_try_improve_iv_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_try_improve_iv_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i32 }
%struct.iv_ca_delta = type { i32 }
%struct.iv_cand = type { i32 }

@ALWAYS_PRUNE_CAND_SET_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_ca*)* @try_improve_iv_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_improve_iv_set(%struct.ivopts_data* %0, %struct.iv_ca* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivopts_data*, align 8
  %5 = alloca %struct.iv_ca*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iv_ca_delta*, align 8
  %11 = alloca %struct.iv_ca_delta*, align 8
  %12 = alloca %struct.iv_ca_delta*, align 8
  %13 = alloca %struct.iv_cand*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %4, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %5, align 8
  %14 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %15 = call i32 @iv_ca_cost(%struct.iv_ca* %14)
  store i32 %15, i32* %8, align 4
  store %struct.iv_ca_delta* null, %struct.iv_ca_delta** %10, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %69, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %19 = call i32 @n_iv_cands(%struct.ivopts_data* %18)
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.iv_cand* @iv_cand(%struct.ivopts_data* %22, i32 %23)
  store %struct.iv_cand* %24, %struct.iv_cand** %13, align 8
  %25 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %26 = load %struct.iv_cand*, %struct.iv_cand** %13, align 8
  %27 = call i64 @iv_ca_cand_used_p(%struct.iv_ca* %25, %struct.iv_cand* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %69

30:                                               ; preds = %21
  %31 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %32 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %33 = load %struct.iv_cand*, %struct.iv_cand** %13, align 8
  %34 = call i32 @iv_ca_extend(%struct.ivopts_data* %31, %struct.iv_ca* %32, %struct.iv_cand* %33, %struct.iv_ca_delta** %11, i32* %9)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %36 = icmp ne %struct.iv_ca_delta* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %69

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ALWAYS_PRUNE_CAND_SET_BOUND, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %44 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %45 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %46 = call i32 @iv_ca_delta_commit(%struct.ivopts_data* %43, %struct.iv_ca* %44, %struct.iv_ca_delta* %45, i32 1)
  %47 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %48 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %49 = load %struct.iv_cand*, %struct.iv_cand** %13, align 8
  %50 = call i32 @iv_ca_prune(%struct.ivopts_data* %47, %struct.iv_ca* %48, %struct.iv_cand* %49, %struct.iv_ca_delta** %12)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %52 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %53 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %54 = call i32 @iv_ca_delta_commit(%struct.ivopts_data* %51, %struct.iv_ca* %52, %struct.iv_ca_delta* %53, i32 0)
  %55 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %56 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %12, align 8
  %57 = call %struct.iv_ca_delta* @iv_ca_delta_join(%struct.iv_ca_delta* %55, %struct.iv_ca_delta* %56)
  store %struct.iv_ca_delta* %57, %struct.iv_ca_delta** %11, align 8
  br label %58

58:                                               ; preds = %42, %38
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %8, align 4
  %64 = call i32 @iv_ca_delta_free(%struct.iv_ca_delta** %10)
  %65 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  store %struct.iv_ca_delta* %65, %struct.iv_ca_delta** %10, align 8
  br label %68

66:                                               ; preds = %58
  %67 = call i32 @iv_ca_delta_free(%struct.iv_ca_delta** %11)
  br label %68

68:                                               ; preds = %66, %62
  br label %69

69:                                               ; preds = %68, %37, %29
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %10, align 8
  %74 = icmp ne %struct.iv_ca_delta* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %77 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %78 = call i32 @iv_ca_prune(%struct.ivopts_data* %76, %struct.iv_ca* %77, %struct.iv_cand* null, %struct.iv_ca_delta** %10)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %10, align 8
  %80 = icmp ne %struct.iv_ca_delta* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %95

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %72
  %84 = load %struct.ivopts_data*, %struct.ivopts_data** %4, align 8
  %85 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %86 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %10, align 8
  %87 = call i32 @iv_ca_delta_commit(%struct.ivopts_data* %84, %struct.iv_ca* %85, %struct.iv_ca_delta* %86, i32 1)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.iv_ca*, %struct.iv_ca** %5, align 8
  %90 = call i32 @iv_ca_cost(%struct.iv_ca* %89)
  %91 = icmp eq i32 %88, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @gcc_assert(i32 %92)
  %94 = call i32 @iv_ca_delta_free(%struct.iv_ca_delta** %10)
  store i32 1, i32* %3, align 4
  br label %95

95:                                               ; preds = %83, %81
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @iv_ca_cost(%struct.iv_ca*) #1

declare dso_local i32 @n_iv_cands(%struct.ivopts_data*) #1

declare dso_local %struct.iv_cand* @iv_cand(%struct.ivopts_data*, i32) #1

declare dso_local i64 @iv_ca_cand_used_p(%struct.iv_ca*, %struct.iv_cand*) #1

declare dso_local i32 @iv_ca_extend(%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_cand*, %struct.iv_ca_delta**, i32*) #1

declare dso_local i32 @iv_ca_delta_commit(%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_ca_delta*, i32) #1

declare dso_local i32 @iv_ca_prune(%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_cand*, %struct.iv_ca_delta**) #1

declare dso_local %struct.iv_ca_delta* @iv_ca_delta_join(%struct.iv_ca_delta*, %struct.iv_ca_delta*) #1

declare dso_local i32 @iv_ca_delta_free(%struct.iv_ca_delta**) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
