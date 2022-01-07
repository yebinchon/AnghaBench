; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_freezer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.seq_file = type { i32 }
%struct.freezer = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@CGROUP_FREEZING = common dso_local global i32 0, align 4
@freezer_state_strs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, %struct.seq_file*)* @freezer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freezer_read(%struct.cgroup* %0, %struct.cftype* %1, %struct.seq_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.freezer*, align 8
  %9 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store %struct.seq_file* %2, %struct.seq_file** %7, align 8
  %10 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %11 = call i32 @cgroup_lock_live_group(%struct.cgroup* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %18 = call %struct.freezer* @cgroup_freezer(%struct.cgroup* %17)
  store %struct.freezer* %18, %struct.freezer** %8, align 8
  %19 = load %struct.freezer*, %struct.freezer** %8, align 8
  %20 = getelementptr inbounds %struct.freezer, %struct.freezer* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.freezer*, %struct.freezer** %8, align 8
  %23 = getelementptr inbounds %struct.freezer, %struct.freezer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CGROUP_FREEZING, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %30 = load %struct.freezer*, %struct.freezer** %8, align 8
  %31 = call i32 @update_if_frozen(%struct.cgroup* %29, %struct.freezer* %30)
  %32 = load %struct.freezer*, %struct.freezer** %8, align 8
  %33 = getelementptr inbounds %struct.freezer, %struct.freezer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %28, %16
  %36 = load %struct.freezer*, %struct.freezer** %8, align 8
  %37 = getelementptr inbounds %struct.freezer, %struct.freezer* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock_irq(i32* %37)
  %39 = call i32 (...) @cgroup_unlock()
  %40 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %41 = load i32*, i32** @freezer_state_strs, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @seq_puts(%struct.seq_file* %40, i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %48 = call i32 @seq_putc(%struct.seq_file* %47, i8 signext 10)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %35, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local %struct.freezer* @cgroup_freezer(%struct.cgroup*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @update_if_frozen(%struct.cgroup*, %struct.freezer*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @cgroup_unlock(...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
