; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___note_new_gpnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___note_new_gpnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32 }
%struct.rcu_node = type { i64 }
%struct.rcu_data = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*)* @__note_new_gpnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__note_new_gpnum(%struct.rcu_state* %0, %struct.rcu_node* %1, %struct.rcu_data* %2) #0 {
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
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %16 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %15, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %18 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.rcu_node*, %struct.rcu_node** %5, align 8
  %20 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rcu_data*, %struct.rcu_data** %6, align 8
  %23 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %14, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
