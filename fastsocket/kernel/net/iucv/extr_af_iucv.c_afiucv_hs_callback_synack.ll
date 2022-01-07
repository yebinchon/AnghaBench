; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_callback_synack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_callback_synack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)* }
%struct.sk_buff = type { i64 }
%struct.iucv_sock = type { i32 }
%struct.af_iucv_trans_hdr = type { i32 }

@IUCV_BOUND = common dso_local global i64 0, align 8
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @afiucv_hs_callback_synack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_callback_synack(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iucv_sock*, align 8
  %6 = alloca %struct.af_iucv_trans_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %7)
  store %struct.iucv_sock* %8, %struct.iucv_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.af_iucv_trans_hdr*
  store %struct.af_iucv_trans_hdr* %12, %struct.af_iucv_trans_hdr** %6, align 8
  %13 = load %struct.iucv_sock*, %struct.iucv_sock** %5, align 8
  %14 = icmp ne %struct.iucv_sock* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IUCV_BOUND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %41

23:                                               ; preds = %16
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @bh_lock_sock(%struct.sock* %24)
  %26 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iucv_sock*, %struct.iucv_sock** %5, align 8
  %30 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @IUCV_CONNECTED, align 8
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = call i32 %36(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = call i32 @bh_unlock_sock(%struct.sock* %39)
  br label %41

41:                                               ; preds = %23, %22, %15
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @kfree_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @NET_RX_SUCCESS, align 4
  ret i32 %44
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
