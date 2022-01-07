; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_ubifs_bg_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_ubifs_bg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ubifs_info = type { i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"background thread \22%s\22 stops\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_bg_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ubifs_info*
  store %struct.ubifs_info* %6, %struct.ubifs_info** %4, align 8
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = call i32 (...) @set_freezable()
  br label %15

15:                                               ; preds = %1, %22, %34, %50
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %54

19:                                               ; preds = %15
  %20 = call i64 (...) @try_to_freeze()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %15

23:                                               ; preds = %19
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @set_current_state(i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = call i64 (...) @kthread_should_stop()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %54

34:                                               ; preds = %30
  %35 = call i32 (...) @schedule()
  br label %15

36:                                               ; preds = %23
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = call i32 @__set_current_state(i32 %37)
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = call i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = call i32 @run_bg_commit(%struct.ubifs_info* %51)
  %53 = call i32 (...) @cond_resched()
  br label %15

54:                                               ; preds = %33, %18
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @dbg_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  ret i32 0
}

declare dso_local i32 @dbg_msg(i8*, i32, ...) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @try_to_freeze(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @ubifs_bg_wbufs_sync(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @run_bg_commit(%struct.ubifs_info*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
