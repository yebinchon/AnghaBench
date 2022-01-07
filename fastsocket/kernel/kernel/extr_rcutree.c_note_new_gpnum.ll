; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c_note_new_gpnum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c_note_new_gpnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32 }
%struct.rcu_data = type { i64, %struct.rcu_node* }
%struct.rcu_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcu_state*, %struct.rcu_data*)* @note_new_gpnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @note_new_gpnum(%struct.rcu_state* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca %struct.rcu_state*, align 8
  %4 = alloca %struct.rcu_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rcu_node*, align 8
  store %struct.rcu_state* %0, %struct.rcu_state** %3, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %10 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %9, i32 0, i32 1
  %11 = load %struct.rcu_node*, %struct.rcu_node** %10, align 8
  store %struct.rcu_node* %11, %struct.rcu_node** %6, align 8
  %12 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %16 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ACCESS_ONCE(i32 %17)
  %19 = icmp eq i64 %14, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %22 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %21, i32 0, i32 0
  %23 = call i32 @spin_trylock(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.rcu_state*, %struct.rcu_state** %3, align 8
  %30 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %31 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %32 = call i32 @__note_new_gpnum(%struct.rcu_state* %29, %struct.rcu_node* %30, %struct.rcu_data* %31)
  %33 = load %struct.rcu_node*, %struct.rcu_node** %6, align 8
  %34 = getelementptr inbounds %struct.rcu_node, %struct.rcu_node* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @__note_new_gpnum(%struct.rcu_state*, %struct.rcu_node*, %struct.rcu_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
