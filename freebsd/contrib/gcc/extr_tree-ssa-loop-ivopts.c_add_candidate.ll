; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_add_candidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_add_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_use = type { i32 }

@IP_NORMAL = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@IP_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, i32, i32, i32, %struct.iv_use*)* @add_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_candidate(%struct.ivopts_data* %0, i32 %1, i32 %2, i32 %3, %struct.iv_use* %4) #0 {
  %6 = alloca %struct.ivopts_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iv_use*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.iv_use* %4, %struct.iv_use** %10, align 8
  %11 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %12 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ip_normal_pos(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @IP_NORMAL, align 4
  %22 = load %struct.iv_use*, %struct.iv_use** %10, align 8
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = call i32 @add_candidate_1(%struct.ivopts_data* %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct.iv_use* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %5
  %26 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %27 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ip_end_pos(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %33 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @allow_ip_end_pos_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.ivopts_data*, %struct.ivopts_data** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @IP_END, align 4
  %43 = load %struct.iv_use*, %struct.iv_use** %10, align 8
  %44 = load i32, i32* @NULL_TREE, align 4
  %45 = call i32 @add_candidate_1(%struct.ivopts_data* %38, i32 %39, i32 %40, i32 %41, i32 %42, %struct.iv_use* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %31, %25
  ret void
}

declare dso_local i64 @ip_normal_pos(i32) #1

declare dso_local i32 @add_candidate_1(%struct.ivopts_data*, i32, i32, i32, i32, %struct.iv_use*, i32) #1

declare dso_local i64 @ip_end_pos(i32) #1

declare dso_local i64 @allow_ip_end_pos_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
