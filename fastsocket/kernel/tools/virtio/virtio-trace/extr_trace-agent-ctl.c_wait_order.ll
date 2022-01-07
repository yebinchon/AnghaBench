; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-ctl.c_wait_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-ctl.c_wait_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@global_sig_receive = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@EVENT_WAIT_MSEC = common dso_local global i32 0, align 4
@global_signal_val = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Receive interrupt %d\0A\00", align 1
@global_run_operation = common dso_local global i32 0, align 4
@cond_wakeup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Polling error\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wait_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_order(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pollfd, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* @global_sig_receive, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %36

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @POLLIN, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %3, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @EVENT_WAIT_MSEC, align 4
  %15 = call i32 @poll(%struct.pollfd* %3, i32 1, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i64, i64* @global_signal_val, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  store i32 1, i32* @global_sig_receive, align 4
  %19 = load i64, i64* @global_signal_val, align 8
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @global_run_operation, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call i32 @pthread_cond_broadcast(i32* @cond_wakeup)
  br label %25

25:                                               ; preds = %23, %18
  store i32 -1, i32* %4, align 4
  br label %36

26:                                               ; preds = %9
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %36

35:                                               ; preds = %31
  br label %5

36:                                               ; preds = %34, %25, %5
  %37 = load i32, i32* %4, align 4
  ret i32 %37

38:                                               ; preds = %29
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @exit(i32 %39) #3
  unreachable
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
