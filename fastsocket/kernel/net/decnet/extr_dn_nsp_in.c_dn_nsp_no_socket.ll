; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_no_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_nsp_in.c_dn_nsp_no_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dn_skb_cb = type { i32, i32 }

@NET_RX_DROP = common dso_local global i32 0, align 4
@DN_RT_F_RTS = common dso_local global i32 0, align 4
@NSP_REASON_OK = common dso_local global i16 0, align 2
@NSP_DISCINIT = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NSP_DISCCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i16)* @dn_nsp_no_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nsp_no_socket(%struct.sk_buff* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.dn_skb_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff* %7)
  store %struct.dn_skb_cb* %8, %struct.dn_skb_cb** %5, align 8
  %9 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %11 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DN_RT_F_RTS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %48

17:                                               ; preds = %2
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @NSP_REASON_OK, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %17
  %24 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %25 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 12
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.dn_skb_cb*, %struct.dn_skb_cb** %5, align 8
  %31 = getelementptr inbounds %struct.dn_skb_cb, %struct.dn_skb_cb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 112
  switch i32 %33, label %46 [
    i32 16, label %34
    i32 96, label %34
    i32 32, label %40
  ]

34:                                               ; preds = %29, %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load i32, i32* @NSP_DISCINIT, align 4
  %37 = load i16, i16* %4, align 2
  %38 = call i32 @dn_nsp_return_disc(%struct.sk_buff* %35, i32 %36, i16 zeroext %37)
  %39 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load i32, i32* @NSP_DISCCONF, align 4
  %43 = load i16, i16* %4, align 2
  %44 = call i32 @dn_nsp_return_disc(%struct.sk_buff* %41, i32 %42, i16 zeroext %43)
  %45 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %29, %40, %34
  br label %47

47:                                               ; preds = %46, %23, %17
  br label %48

48:                                               ; preds = %47, %16
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local %struct.dn_skb_cb* @DN_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dn_nsp_return_disc(%struct.sk_buff*, i32, i16 zeroext) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
