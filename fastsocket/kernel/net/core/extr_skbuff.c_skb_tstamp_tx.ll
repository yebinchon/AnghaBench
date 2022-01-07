; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_tstamp_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_skbuff.c_skb_tstamp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_TIMESTAMPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skb_tstamp_tx(%struct.sk_buff* %0, %struct.skb_shared_hwtstamps* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.skb_shared_hwtstamps*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock_exterr_skb*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.skb_shared_hwtstamps* %1, %struct.skb_shared_hwtstamps** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = icmp ne %struct.sock* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %56

22:                                               ; preds = %15
  %23 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %4, align 8
  %24 = icmp ne %struct.skb_shared_hwtstamps* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %26)
  %28 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %4, align 8
  %29 = bitcast %struct.skb_shared_hwtstamps* %27 to i8*
  %30 = bitcast %struct.skb_shared_hwtstamps* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  br label %35

31:                                               ; preds = %22
  %32 = call i32 (...) @ktime_get_real()
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %36)
  store %struct.sock_exterr_skb* %37, %struct.sock_exterr_skb** %6, align 8
  %38 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %39 = call i32 @memset(%struct.sock_exterr_skb* %38, i32 0, i32 8)
  %40 = load i32, i32* @ENOMSG, align 4
  %41 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %42 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @SO_EE_ORIGIN_TIMESTAMPING, align 4
  %45 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %46 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call i32 @sock_queue_err_skb(%struct.sock* %48, %struct.sk_buff* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  br label %56

56:                                               ; preds = %14, %21, %53, %35
  ret void
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.sock_exterr_skb*, i32, i32) #1

declare dso_local i32 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
