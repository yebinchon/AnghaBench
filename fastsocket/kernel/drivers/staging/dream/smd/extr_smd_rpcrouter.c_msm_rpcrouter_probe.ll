; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter.c_msm_rpcrouter_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@local_endpoints = common dso_local global i32 0, align 4
@remote_endpoints = common dso_local global i32 0, align 4
@newserver_wait = common dso_local global i32 0, align 4
@smd_wait = common dso_local global i32 0, align 4
@rpcrouter_wake_lock = common dso_local global i32 0, align 4
@WAKE_LOCK_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SMD_RPCCALL\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"rpcrouter\00", align 1
@rpcrouter_workqueue = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@initialized = common dso_local global i64 0, align 8
@smd_channel = common dso_local global i32 0, align 4
@rpcrouter_smdnotify = common dso_local global i32 0, align 4
@work_read_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @msm_rpcrouter_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_rpcrouter_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 @INIT_LIST_HEAD(i32* @local_endpoints)
  %6 = call i32 @INIT_LIST_HEAD(i32* @remote_endpoints)
  %7 = call i32 @init_waitqueue_head(i32* @newserver_wait)
  %8 = call i32 @init_waitqueue_head(i32* @smd_wait)
  %9 = load i32, i32* @WAKE_LOCK_SUSPEND, align 4
  %10 = call i32 @wake_lock_init(i32* @rpcrouter_wake_lock, i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* @rpcrouter_workqueue, align 4
  %12 = load i32, i32* @rpcrouter_workqueue, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = call i32 (...) @msm_rpcrouter_init_devices()
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %33

22:                                               ; preds = %17
  store i64 0, i64* @initialized, align 8
  %23 = load i32, i32* @rpcrouter_smdnotify, align 4
  %24 = call i32 @smd_open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* @smd_channel, i32* null, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @rpcrouter_workqueue, align 4
  %30 = call i32 @queue_work(i32 %29, i32* @work_read_data)
  store i32 0, i32* %2, align 4
  br label %37

31:                                               ; preds = %27
  %32 = call i32 (...) @msm_rpcrouter_exit_devices()
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* @rpcrouter_workqueue, align 4
  %35 = call i32 @destroy_workqueue(i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %28, %14
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @wake_lock_init(i32*, i32, i8*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @msm_rpcrouter_init_devices(...) #1

declare dso_local i32 @smd_open(i8*, i32*, i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @msm_rpcrouter_exit_devices(...) #1

declare dso_local i32 @destroy_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
