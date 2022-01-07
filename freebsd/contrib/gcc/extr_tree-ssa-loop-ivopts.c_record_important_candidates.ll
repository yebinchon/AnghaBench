; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_record_important_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_record_important_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32, i32 }
%struct.iv_use = type { i32 }
%struct.iv_cand = type { i64 }

@CONSIDER_ALL_CANDIDATES_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*)* @record_important_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_important_candidates(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iv_use*, align 8
  %5 = alloca %struct.iv_cand*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %9 = call i32 @n_iv_cands(%struct.ivopts_data* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.iv_cand* @iv_cand(%struct.ivopts_data* %12, i32 %13)
  store %struct.iv_cand* %14, %struct.iv_cand** %5, align 8
  %15 = load %struct.iv_cand*, %struct.iv_cand** %5, align 8
  %16 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %21 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @bitmap_set_bit(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %31 = call i32 @n_iv_cands(%struct.ivopts_data* %30)
  %32 = load i32, i32* @CONSIDER_ALL_CANDIDATES_BOUND, align 4
  %33 = icmp ule i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %36 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %38 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %45 = call i32 @n_iv_uses(%struct.ivopts_data* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %48, i32 %49)
  store %struct.iv_use* %50, %struct.iv_use** %4, align 8
  %51 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %52 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BITMAP_FREE(i32 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %42

58:                                               ; preds = %42
  br label %79

59:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %63 = call i32 @n_iv_uses(%struct.ivopts_data* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call %struct.iv_use* @iv_use(%struct.ivopts_data* %66, i32 %67)
  %69 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %72 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bitmap_ior_into(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %58
  ret void
}

declare dso_local i32 @n_iv_cands(%struct.ivopts_data*) #1

declare dso_local %struct.iv_cand* @iv_cand(%struct.ivopts_data*, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @n_iv_uses(%struct.ivopts_data*) #1

declare dso_local %struct.iv_use* @iv_use(%struct.ivopts_data*, i32) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @bitmap_ior_into(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
