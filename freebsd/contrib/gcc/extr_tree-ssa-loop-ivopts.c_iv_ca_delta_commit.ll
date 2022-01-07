; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_ca_delta_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.iv_ca = type { i32 }
%struct.iv_ca_delta = type { i32, %struct.cost_pair*, %struct.cost_pair*, %struct.iv_ca_delta* }
%struct.cost_pair = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.iv_ca*, %struct.iv_ca_delta*, i32)* @iv_ca_delta_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iv_ca_delta_commit(%struct.ivopts_data* %0, %struct.iv_ca* %1, %struct.iv_ca_delta* %2, i32 %3) #0 {
  %5 = alloca %struct.ivopts_data*, align 8
  %6 = alloca %struct.iv_ca*, align 8
  %7 = alloca %struct.iv_ca_delta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cost_pair*, align 8
  %10 = alloca %struct.cost_pair*, align 8
  %11 = alloca %struct.iv_ca_delta*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %5, align 8
  store %struct.iv_ca* %1, %struct.iv_ca** %6, align 8
  store %struct.iv_ca_delta* %2, %struct.iv_ca_delta** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %7, align 8
  %16 = call %struct.iv_ca_delta* @iv_ca_delta_reverse(%struct.iv_ca_delta* %15)
  store %struct.iv_ca_delta* %16, %struct.iv_ca_delta** %7, align 8
  br label %17

17:                                               ; preds = %14, %4
  %18 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %7, align 8
  store %struct.iv_ca_delta* %18, %struct.iv_ca_delta** %11, align 8
  br label %19

19:                                               ; preds = %45, %17
  %20 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %21 = icmp ne %struct.iv_ca_delta* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %24 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %23, i32 0, i32 2
  %25 = load %struct.cost_pair*, %struct.cost_pair** %24, align 8
  store %struct.cost_pair* %25, %struct.cost_pair** %9, align 8
  %26 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %27 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %26, i32 0, i32 1
  %28 = load %struct.cost_pair*, %struct.cost_pair** %27, align 8
  store %struct.cost_pair* %28, %struct.cost_pair** %10, align 8
  %29 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %30 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %31 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.cost_pair* @iv_ca_cand_for_use(%struct.iv_ca* %29, i32 %32)
  %34 = load %struct.cost_pair*, %struct.cost_pair** %9, align 8
  %35 = icmp eq %struct.cost_pair* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load %struct.ivopts_data*, %struct.ivopts_data** %5, align 8
  %39 = load %struct.iv_ca*, %struct.iv_ca** %6, align 8
  %40 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %41 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.cost_pair*, %struct.cost_pair** %10, align 8
  %44 = call i32 @iv_ca_set_cp(%struct.ivopts_data* %38, %struct.iv_ca* %39, i32 %42, %struct.cost_pair* %43)
  br label %45

45:                                               ; preds = %22
  %46 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %11, align 8
  %47 = getelementptr inbounds %struct.iv_ca_delta, %struct.iv_ca_delta* %46, i32 0, i32 3
  %48 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %47, align 8
  store %struct.iv_ca_delta* %48, %struct.iv_ca_delta** %11, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.iv_ca_delta*, %struct.iv_ca_delta** %7, align 8
  %54 = call %struct.iv_ca_delta* @iv_ca_delta_reverse(%struct.iv_ca_delta* %53)
  br label %55

55:                                               ; preds = %52, %49
  ret void
}

declare dso_local %struct.iv_ca_delta* @iv_ca_delta_reverse(%struct.iv_ca_delta*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.cost_pair* @iv_ca_cand_for_use(%struct.iv_ca*, i32) #1

declare dso_local i32 @iv_ca_set_cp(%struct.ivopts_data*, %struct.iv_ca*, i32, %struct.cost_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
