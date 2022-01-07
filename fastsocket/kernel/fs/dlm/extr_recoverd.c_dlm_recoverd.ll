; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_dlm_recoverd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_dlm_recoverd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"dlm_recoverd: no lockspace %p\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@LSFL_WORK = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dlm_recoverd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_recoverd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dlm_ls*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.dlm_ls* @dlm_find_lockspace_local(i8* %5)
  store %struct.dlm_ls* %6, %struct.dlm_ls** %4, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %8 = icmp ne %struct.dlm_ls* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 -1, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %38, %12
  %14 = call i32 (...) @kthread_should_stop()
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %19 = call i32 @set_current_state(i32 %18)
  %20 = load i32, i32* @LSFL_WORK, align 4
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %21, i32 0, i32 0
  %23 = call i32 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = call i32 (...) @schedule()
  br label %27

27:                                               ; preds = %25, %17
  %28 = load i32, i32* @TASK_RUNNING, align 4
  %29 = call i32 @set_current_state(i32 %28)
  %30 = load i32, i32* @LSFL_WORK, align 4
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %31, i32 0, i32 0
  %33 = call i64 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %37 = call i32 @do_ls_recovery(%struct.dlm_ls* %36)
  br label %38

38:                                               ; preds = %35, %27
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %41 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %9
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i8*) #1

declare dso_local i32 @log_print(i8*, i8*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @do_ls_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
