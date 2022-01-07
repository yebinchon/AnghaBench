; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_receive_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32* }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_receive_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call i64 @sk_filter(%struct.sock* %9, %struct.sk_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %77

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @sk_rcvqueues_full(%struct.sock* %17, %struct.sk_buff* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  br label %77

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @bh_lock_sock_nested(%struct.sock* %32)
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = call i32 @bh_lock_sock(%struct.sock* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i32 @sock_owned_by_user(%struct.sock* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %37
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* @_RET_IP_, align 4
  %46 = call i32 @mutex_acquire(i32* %44, i32 0, i32 1, i32 %45)
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = call i32 @sk_backlog_rcv(%struct.sock* %47, %struct.sk_buff* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @_RET_IP_, align 4
  %54 = call i32 @mutex_release(i32* %52, i32 1, i32 %53)
  br label %70

55:                                               ; preds = %37
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @sk_add_backlog(%struct.sock* %56, %struct.sk_buff* %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.sock*, %struct.sock** %4, align 8
  %65 = call i32 @bh_unlock_sock(%struct.sock* %64)
  %66 = load %struct.sock*, %struct.sock** %4, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  %68 = call i32 @atomic_inc(i32* %67)
  br label %77

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = call i32 @bh_unlock_sock(%struct.sock* %71)
  br label %73

73:                                               ; preds = %77, %70
  %74 = load %struct.sock*, %struct.sock** %4, align 8
  %75 = call i32 @sock_put(%struct.sock* %74)
  %76 = load i32, i32* %7, align 4
  ret i32 %76

77:                                               ; preds = %63, %24, %13
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @kfree_skb(%struct.sk_buff* %78)
  br label %73
}

declare dso_local i64 @sk_filter(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @sk_rcvqueues_full(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bh_lock_sock_nested(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @mutex_acquire(i32*, i32, i32, i32) #1

declare dso_local i32 @sk_backlog_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i64 @sk_add_backlog(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
