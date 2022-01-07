; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_external_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_external_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_irq_data = type { i64, i32 }
%struct.iucv_irq_list = type { i32, i32 }

@iucv_irq_data = common dso_local global %struct.iucv_irq_data** null, align 8
@iucv_max_pathid = common dso_local global i64 0, align 8
@iucv_error_no_listener = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"iucv_external_interrupt: out of memory\0A\00", align 1
@iucv_queue_lock = common dso_local global i32 0, align 4
@iucv_work_queue = common dso_local global i32 0, align 4
@iucv_work = common dso_local global i32 0, align 4
@iucv_task_queue = common dso_local global i32 0, align 4
@iucv_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @iucv_external_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_external_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iucv_irq_data*, align 8
  %4 = alloca %struct.iucv_irq_list*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.iucv_irq_data**, %struct.iucv_irq_data*** @iucv_irq_data, align 8
  %6 = call i64 (...) @smp_processor_id()
  %7 = getelementptr inbounds %struct.iucv_irq_data*, %struct.iucv_irq_data** %5, i64 %6
  %8 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %7, align 8
  store %struct.iucv_irq_data* %8, %struct.iucv_irq_data** %3, align 8
  %9 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %10 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @iucv_max_pathid, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %16 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @iucv_max_pathid, align 8
  %19 = icmp sge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %23 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @iucv_error_no_listener, align 4
  %26 = call i32 @iucv_sever_pathid(i64 %24, i32 %25)
  br label %69

27:                                               ; preds = %1
  %28 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %29 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %34 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 9
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.iucv_irq_list* @kmalloc(i32 8, i32 %41)
  store %struct.iucv_irq_list* %42, %struct.iucv_irq_list** %4, align 8
  %43 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %4, align 8
  %44 = icmp ne %struct.iucv_irq_list* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %69

47:                                               ; preds = %37
  %48 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %4, align 8
  %49 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %48, i32 0, i32 1
  %50 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.iucv_irq_data* %50, i32 4)
  %52 = call i32 @spin_lock(i32* @iucv_queue_lock)
  %53 = load %struct.iucv_irq_data*, %struct.iucv_irq_data** %3, align 8
  %54 = getelementptr inbounds %struct.iucv_irq_data, %struct.iucv_irq_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %4, align 8
  %59 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %58, i32 0, i32 0
  %60 = call i32 @list_add_tail(i32* %59, i32* @iucv_work_queue)
  %61 = call i32 @schedule_work(i32* @iucv_work)
  br label %67

62:                                               ; preds = %47
  %63 = load %struct.iucv_irq_list*, %struct.iucv_irq_list** %4, align 8
  %64 = getelementptr inbounds %struct.iucv_irq_list, %struct.iucv_irq_list* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %64, i32* @iucv_task_queue)
  %66 = call i32 @tasklet_schedule(i32* @iucv_tasklet)
  br label %67

67:                                               ; preds = %62, %57
  %68 = call i32 @spin_unlock(i32* @iucv_queue_lock)
  br label %69

69:                                               ; preds = %67, %45, %14
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iucv_sever_pathid(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.iucv_irq_list* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.iucv_irq_data*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
