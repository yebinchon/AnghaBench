; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xs_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_xs.c_xs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32 }

@xs_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@xenwatch_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"xenwatch\00", align 1
@xenwatch_pid = common dso_local global i32 0, align 4
@xenbus_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"xenbus\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = call i32 @INIT_LIST_HEAD(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 6))
  %5 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 5))
  %6 = call i32 @init_waitqueue_head(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 4))
  %7 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 3))
  %8 = call i32 @mutex_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 2))
  %9 = call i32 @init_rwsem(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 1))
  %10 = call i32 @init_rwsem(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xs_state, i32 0, i32 0))
  %11 = call i32 (...) @xb_init_comms()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %38

16:                                               ; preds = %0
  %17 = load i32, i32* @xenwatch_thread, align 4
  %18 = call %struct.task_struct* @kthread_run(i32 %17, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %18, %struct.task_struct** %3, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %20 = call i64 @IS_ERR(%struct.task_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = call i32 @PTR_ERR(%struct.task_struct* %23)
  store i32 %24, i32* %1, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* @xenwatch_pid, align 4
  %29 = load i32, i32* @xenbus_thread, align 4
  %30 = call %struct.task_struct* @kthread_run(i32 %29, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.task_struct* %30, %struct.task_struct** %3, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %32 = call i64 @IS_ERR(%struct.task_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %36 = call i32 @PTR_ERR(%struct.task_struct* %35)
  store i32 %36, i32* %1, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %34, %22, %14
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @xb_init_comms(...) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
