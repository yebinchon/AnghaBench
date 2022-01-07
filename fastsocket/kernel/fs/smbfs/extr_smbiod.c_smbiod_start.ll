; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_smbiod.c_smbiod_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@smbiod_state = common dso_local global i64 0, align 8
@SMBIOD_DEAD = common dso_local global i64 0, align 8
@SMBIOD_STARTING = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@servers_lock = common dso_local global i32 0, align 4
@smbiod = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"smbiod\00", align 1
@smbiod_thread = common dso_local global %struct.task_struct* null, align 8
@SMBIOD_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @smbiod_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbiod_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @smbiod_state, align 8
  %5 = load i64, i64* @SMBIOD_DEAD, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %34

8:                                                ; preds = %0
  %9 = load i64, i64* @SMBIOD_STARTING, align 8
  store i64 %9, i64* @smbiod_state, align 8
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = call i32 @__module_get(i32 %10)
  %12 = call i32 @spin_unlock(i32* @servers_lock)
  %13 = load i32, i32* @smbiod, align 4
  %14 = call %struct.task_struct* @kthread_run(i32 %13, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %14, %struct.task_struct** %2, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %16 = call i64 @IS_ERR(%struct.task_struct* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %8
  %19 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %20 = call i32 @PTR_ERR(%struct.task_struct* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @module_put(i32 %21)
  br label %23

23:                                               ; preds = %18, %8
  %24 = call i32 @spin_lock(i32* @servers_lock)
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @SMBIOD_DEAD, align 8
  store i64 %28, i64* @smbiod_state, align 8
  store %struct.task_struct* null, %struct.task_struct** @smbiod_thread, align 8
  br label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @SMBIOD_RUNNING, align 8
  store i64 %30, i64* @smbiod_state, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  store %struct.task_struct* %31, %struct.task_struct** @smbiod_thread, align 8
  br label %32

32:                                               ; preds = %29, %27
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %7
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
