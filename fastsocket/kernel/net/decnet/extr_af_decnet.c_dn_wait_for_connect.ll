; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_af_decnet.c_dn_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i64*)* @dn_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dn_wait_for_connect(%struct.sock* %0, i64* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %13 = call i32 @prepare_to_wait(i32 %11, i32* @wait, i32 %12)
  br label %14

14:                                               ; preds = %60, %2
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call i32 @release_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 2
  %19 = call %struct.sk_buff* @skb_dequeue(i32* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @schedule_timeout(i64 %24)
  %26 = load i64*, i64** %4, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 2
  %29 = call %struct.sk_buff* @skb_dequeue(i32* %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %5, align 8
  br label %30

30:                                               ; preds = %22, %14
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @lock_sock(%struct.sock* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %66

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TCP_LISTEN, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %66

45:                                               ; preds = %36
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @sock_intr_errno(i64 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @current, align 4
  %50 = call i64 @signal_pending(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %66

53:                                               ; preds = %45
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %66

60:                                               ; preds = %53
  %61 = load %struct.sock*, %struct.sock** %3, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %65 = call i32 @prepare_to_wait(i32 %63, i32* @wait, i32 %64)
  br label %14

66:                                               ; preds = %59, %52, %44, %35
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @finish_wait(i32 %69, i32* @wait)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = icmp eq %struct.sk_buff* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.sk_buff* @ERR_PTR(i32 %74)
  br label %78

76:                                               ; preds = %66
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  br label %78

78:                                               ; preds = %76, %73
  %79 = phi %struct.sk_buff* [ %75, %73 ], [ %77, %76 ]
  ret %struct.sk_buff* %79
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
