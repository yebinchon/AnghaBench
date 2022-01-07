; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_sever.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_path_sever.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_path = type { i64, i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@iucv_active_cpu = common dso_local global i64 0, align 8
@iucv_table_lock = common dso_local global i32 0, align 4
@iucv_path_table = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iucv_path_sever(%struct.iucv_path* %0, i32* %1) #0 {
  %3 = alloca %struct.iucv_path*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.iucv_path* %0, %struct.iucv_path** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 (...) @preempt_disable()
  %7 = load i32, i32* @iucv_buffer_cpumask, align 4
  %8 = call i64 @cpus_empty(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i64, i64* @iucv_active_cpu, align 8
  %15 = call i64 (...) @smp_processor_id()
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @spin_lock_bh(i32* @iucv_table_lock)
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %21 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @iucv_sever_pathid(i64 %22, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32**, i32*** @iucv_path_table, align 8
  %26 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %27 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load %struct.iucv_path*, %struct.iucv_path** %3, align 8
  %31 = getelementptr inbounds %struct.iucv_path, %struct.iucv_path* %30, i32 0, i32 1
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load i64, i64* @iucv_active_cpu, align 8
  %34 = call i64 (...) @smp_processor_id()
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %19
  %37 = call i32 @spin_unlock_bh(i32* @iucv_table_lock)
  br label %38

38:                                               ; preds = %36, %19
  br label %39

39:                                               ; preds = %38, %10
  %40 = call i32 (...) @preempt_enable()
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
