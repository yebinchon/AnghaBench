; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___rcu_process_gp_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___rcu_process_gp_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32 }
%struct.rcu_node = type { i64 }
%struct.rcu_data = type { i64, i32* }

@RCU_WAIT_TAIL = common dso_local global i64 0, align 8
@RCU_DONE_TAIL = common dso_local global i64 0, align 8
@RCU_NEXT_READY_TAIL = common dso_local global i64 0, align 8
@RCU_NEXT_TAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*)* @__rcu_process_gp_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rcu_process_gp_end(%struct.rcu_state* %0, %struct.rcu_node* %1, %struct.rcu_data* %2) #0 {
  %4 = alloca %struct.rcu_state*, align 8
  %5 = alloca %struct.rcu_node*, align 8
  %6 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_state* %0, %struct.rcu_state** %4, align 8
  store %struct.rcu_node* %1, %struct.rcu_node** %5, align 8
  store %struct.rcu_data* %2, %struct.rcu_data** %6, align 8
  %7 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %8 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %11 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %16 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @RCU_WAIT_TAIL, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %22 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @RCU_DONE_TAIL, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %27 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @RCU_NEXT_READY_TAIL, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %33 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @RCU_WAIT_TAIL, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  %37 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %38 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @RCU_NEXT_TAIL, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %44 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @RCU_NEXT_READY_TAIL, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %49 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %52 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
