; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-ctl.c_rw_ctl_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent-ctl.c_rw_ctl_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_MSG_SIZE = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@signal_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@global_sig_receive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"read data error in ctl thread\0A\00", align 1
@global_run_operation = common dso_local global i32 0, align 4
@cond_wakeup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Wake up all read/write threads\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Stop all read/write threads\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid host notification: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rw_ctl_loop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @HOST_MSG_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @SIGTERM, align 4
  %12 = load i32, i32* @signal_handler, align 4
  %13 = call i32 @signal(i32 %11, i32 %12)
  %14 = load i32, i32* @SIGINT, align 4
  %15 = load i32, i32* @signal_handler, align 4
  %16 = call i32 @signal(i32 %14, i32 %15)
  %17 = load i32, i32* @SIGQUIT, align 4
  %18 = load i32, i32* @signal_handler, align 4
  %19 = call i32 @signal(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %62, %1
  %21 = load i32, i32* @global_sig_receive, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %63

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @wait_order(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %63

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = trunc i64 %8 to i32
  %33 = call i32 @read(i32 %31, i8* %10, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, i8* %10, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  store i32 1, i32* @global_run_operation, align 4
  %47 = call i32 @pthread_cond_broadcast(i32* @cond_wakeup)
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %62

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %3, align 4
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, i8* %10, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 48
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  store i32 0, i32* @global_run_operation, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %61

59:                                               ; preds = %52, %49
  %60 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %10)
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %46
  br label %20

63:                                               ; preds = %29, %20
  %64 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i8* null

65:                                               ; preds = %36
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  %67 = call i32 @exit(i32 %66) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @signal(i32, i32) #2

declare dso_local i32 @wait_order(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @pthread_cond_broadcast(i32*) #2

declare dso_local i32 @pr_debug(i8*) #2

declare dso_local i32 @pr_info(i8*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
