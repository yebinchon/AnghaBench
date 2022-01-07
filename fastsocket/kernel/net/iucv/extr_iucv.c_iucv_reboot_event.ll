; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_reboot_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_reboot_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@iucv_irq_cpumask = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@iucv_block_cpu = common dso_local global i32 0, align 4
@iucv_max_pathid = common dso_local global i32 0, align 4
@iucv_path_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @iucv_reboot_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iucv_reboot_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call i64 @cpumask_empty(i32* @iucv_irq_cpumask)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %13, i32* %4, align 4
  br label %42

14:                                               ; preds = %3
  %15 = call i32 (...) @get_online_cpus()
  %16 = load i32, i32* @iucv_block_cpu, align 4
  %17 = call i32 @on_each_cpu_mask(i32* @iucv_irq_cpumask, i32 %16, i32* null, i32 1)
  %18 = call i32 (...) @preempt_disable()
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %14
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @iucv_max_pathid, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i64*, i64** @iucv_path_table, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @iucv_sever_pathid(i32 %31, i32* null)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  %38 = call i32 (...) @preempt_enable()
  %39 = call i32 (...) @put_online_cpus()
  %40 = call i32 (...) @iucv_disable()
  %41 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @on_each_cpu_mask(i32*, i32, i32*, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @iucv_sever_pathid(i32, i32*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @iucv_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
