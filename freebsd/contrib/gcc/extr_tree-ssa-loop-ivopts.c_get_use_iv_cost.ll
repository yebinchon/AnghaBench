; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_use_iv_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_use_iv_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cost_pair = type { %struct.iv_cand* }
%struct.ivopts_data = type { i64 }
%struct.iv_use = type { i32, %struct.cost_pair* }
%struct.iv_cand = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cost_pair* (%struct.ivopts_data*, %struct.iv_use*, %struct.iv_cand*)* @get_use_iv_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cost_pair* @get_use_iv_cost(%struct.ivopts_data* %0, %struct.iv_use* %1, %struct.iv_cand* %2) #0 {
  %4 = alloca %struct.cost_pair*, align 8
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_use*, align 8
  %7 = alloca %struct.iv_cand*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cost_pair*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_use* %1, %struct.iv_use** %6, align 8
  store %struct.iv_cand* %2, %struct.iv_cand** %7, align 8
  %11 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %12 = icmp ne %struct.iv_cand* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.cost_pair* null, %struct.cost_pair** %4, align 8
  br label %101

14:                                               ; preds = %3
  %15 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %16 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %21 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %20, i32 0, i32 1
  %22 = load %struct.cost_pair*, %struct.cost_pair** %21, align 8
  %23 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %24 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %22, i64 %26
  store %struct.cost_pair* %27, %struct.cost_pair** %10, align 8
  %28 = load %struct.cost_pair*, %struct.cost_pair** %10, align 8
  %29 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %28, i32 0, i32 0
  %30 = load %struct.iv_cand*, %struct.iv_cand** %29, align 8
  %31 = icmp ne %struct.iv_cand* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store %struct.cost_pair* null, %struct.cost_pair** %4, align 8
  br label %101

33:                                               ; preds = %19
  %34 = load %struct.cost_pair*, %struct.cost_pair** %10, align 8
  store %struct.cost_pair* %34, %struct.cost_pair** %4, align 8
  br label %101

35:                                               ; preds = %14
  %36 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %37 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %40 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %38, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %70, %35
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %48 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %53 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %52, i32 0, i32 1
  %54 = load %struct.cost_pair*, %struct.cost_pair** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %54, i64 %56
  %58 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %57, i32 0, i32 0
  %59 = load %struct.iv_cand*, %struct.iv_cand** %58, align 8
  %60 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %61 = icmp eq %struct.iv_cand* %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %51
  %63 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %64 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %63, i32 0, i32 1
  %65 = load %struct.cost_pair*, %struct.cost_pair** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %65, i64 %67
  store %struct.cost_pair* %68, %struct.cost_pair** %4, align 8
  br label %101

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %45

73:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %97, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %80 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %79, i32 0, i32 1
  %81 = load %struct.cost_pair*, %struct.cost_pair** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %81, i64 %83
  %85 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %84, i32 0, i32 0
  %86 = load %struct.iv_cand*, %struct.iv_cand** %85, align 8
  %87 = load %struct.iv_cand*, %struct.iv_cand** %7, align 8
  %88 = icmp eq %struct.iv_cand* %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.iv_use*, %struct.iv_use** %6, align 8
  %91 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %90, i32 0, i32 1
  %92 = load %struct.cost_pair*, %struct.cost_pair** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.cost_pair, %struct.cost_pair* %92, i64 %94
  store %struct.cost_pair* %95, %struct.cost_pair** %4, align 8
  br label %101

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %74

100:                                              ; preds = %74
  store %struct.cost_pair* null, %struct.cost_pair** %4, align 8
  br label %101

101:                                              ; preds = %100, %89, %62, %33, %32, %13
  %102 = load %struct.cost_pair*, %struct.cost_pair** %4, align 8
  ret %struct.cost_pair* %102
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
