; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }

@DLM_RECO_THREAD_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"dlm thread running for %s...\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"quitting DLM recovery thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dlm_recovery_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_recovery_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %7, %struct.dlm_ctxt** %4, align 8
  %8 = load i32, i32* @DLM_RECO_THREAD_TIMEOUT_MS, align 4
  %9 = call i64 @msecs_to_jiffies(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %37, %29, %1
  %15 = call i32 (...) @kthread_should_stop()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %20 = call i64 @dlm_joined(%struct.dlm_ctxt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %24 = call i32 @dlm_do_recovery(%struct.dlm_ctxt* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %14

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (...) @kthread_should_stop()
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @wait_event_interruptible_timeout(i32 %40, i32 %41, i64 %42)
  br label %14

44:                                               ; preds = %14
  %45 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i64 @dlm_joined(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_do_recovery(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
