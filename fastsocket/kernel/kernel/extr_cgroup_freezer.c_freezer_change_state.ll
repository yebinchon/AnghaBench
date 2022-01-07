; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_change_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_change_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.freezer = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, i32)* @freezer_change_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezer_change_state(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.freezer*, align 8
  %6 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %8 = call %struct.freezer* @cgroup_freezer(%struct.cgroup* %7)
  store %struct.freezer* %8, %struct.freezer** %5, align 8
  %9 = load %struct.freezer*, %struct.freezer** %5, align 8
  %10 = getelementptr inbounds %struct.freezer, %struct.freezer* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %13 = load %struct.freezer*, %struct.freezer** %5, align 8
  %14 = call i32 @update_if_frozen(%struct.cgroup* %12, %struct.freezer* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.freezer*, %struct.freezer** %5, align 8
  %17 = getelementptr inbounds %struct.freezer, %struct.freezer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %34

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %31 [
    i32 128, label %23
    i32 129, label %27
  ]

23:                                               ; preds = %21
  %24 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %25 = load %struct.freezer*, %struct.freezer** %5, align 8
  %26 = call i32 @unfreeze_cgroup(%struct.cgroup* %24, %struct.freezer* %25)
  br label %33

27:                                               ; preds = %21
  %28 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %29 = load %struct.freezer*, %struct.freezer** %5, align 8
  %30 = call i32 @try_to_freeze_cgroup(%struct.cgroup* %28, %struct.freezer* %29)
  store i32 %30, i32* %6, align 4
  br label %33

31:                                               ; preds = %21
  %32 = call i32 (...) @BUG()
  br label %33

33:                                               ; preds = %31, %27, %23
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.freezer*, %struct.freezer** %5, align 8
  %36 = getelementptr inbounds %struct.freezer, %struct.freezer* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.freezer* @cgroup_freezer(%struct.cgroup*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @update_if_frozen(%struct.cgroup*, %struct.freezer*) #1

declare dso_local i32 @unfreeze_cgroup(%struct.cgroup*, %struct.freezer*) #1

declare dso_local i32 @try_to_freeze_cgroup(%struct.cgroup*, %struct.freezer*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
