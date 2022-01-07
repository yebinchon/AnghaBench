; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_filter = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_filter(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_filter*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i32 @security_sock_rcv_skb(%struct.sock* %9, %struct.sk_buff* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = call i32 (...) @rcu_read_lock_bh()
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sk_filter* @rcu_dereference(i32 %20)
  store %struct.sk_filter* %21, %struct.sk_filter** %7, align 8
  %22 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %23 = icmp ne %struct.sk_filter* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %27 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %30 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sk_run_filter(%struct.sk_buff* %25, i32 %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pskb_trim(%struct.sk_buff* %36, i32 %37)
  br label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %38, %35 ], [ %41, %39 ]
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = call i32 (...) @rcu_read_unlock_bh()
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @security_sock_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @sk_run_filter(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pskb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
