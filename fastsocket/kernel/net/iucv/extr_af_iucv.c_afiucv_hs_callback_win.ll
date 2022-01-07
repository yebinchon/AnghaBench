; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_callback_win.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_af_iucv.c_afiucv_hs_callback_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i64 }
%struct.iucv_sock = type { i32 }
%struct.af_iucv_trans_hdr = type { i32 }

@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@IUCV_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @afiucv_hs_callback_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afiucv_hs_callback_win(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iucv_sock*, align 8
  %7 = alloca %struct.af_iucv_trans_hdr*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.iucv_sock* @iucv_sk(%struct.sock* %8)
  store %struct.iucv_sock* %9, %struct.iucv_sock** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.af_iucv_trans_hdr*
  store %struct.af_iucv_trans_hdr* %13, %struct.af_iucv_trans_hdr** %7, align 8
  %14 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %15 = icmp ne %struct.iucv_sock* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IUCV_CONNECTED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iucv_sock*, %struct.iucv_sock** %6, align 8
  %31 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %30, i32 0, i32 0
  %32 = call i32 @atomic_sub(i32 %29, i32* %31)
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @iucv_sock_wake_msglim(%struct.sock* %33)
  %35 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %24, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.iucv_sock* @iucv_sk(%struct.sock*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @iucv_sock_wake_msglim(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
