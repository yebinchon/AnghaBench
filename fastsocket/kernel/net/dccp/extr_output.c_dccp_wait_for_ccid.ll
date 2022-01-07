; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_wait_for_ccid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_wait_for_ccid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"delayed send by %d msec\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @dccp_wait_for_ccid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_wait_for_ccid(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %10)
  store %struct.dccp_sock* %11, %struct.dccp_sock** %7, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dccp_pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %23 = call i32 @prepare_to_wait(i32 %21, i32* @wait, i32 %22)
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = call i32 @release_sock(%struct.sock* %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @schedule_timeout(i64 %30)
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @lock_sock(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %14
  br label %65

43:                                               ; preds = %14
  %44 = load i32, i32* @current, align 4
  %45 = call i64 @signal_pending(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %68

48:                                               ; preds = %43
  %49 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %50 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sock*, %struct.sock** %4, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @ccid_hc_tx_send_packet(i32 %51, %struct.sock* %52, %struct.sk_buff* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %14, label %58

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %68, %65, %58
  %60 = load %struct.sock*, %struct.sock** %4, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @finish_wait(i32 %62, i32* @wait)
  %64 = load i32, i32* %9, align 4
  ret i32 %64

65:                                               ; preds = %42
  %66 = load i32, i32* @EPIPE, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %59

68:                                               ; preds = %47
  %69 = load i32, i32* @EINTR, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %9, align 4
  br label %59
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @dccp_pr_debug(i8*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @ccid_hc_tx_send_packet(i32, %struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
